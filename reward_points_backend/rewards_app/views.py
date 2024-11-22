from rest_framework import viewsets
from .models import User, Reward, Transaction, LoyaltyRewards, Tasks
from .serializers import (
    UserSerializer, RewardSerializer,
    TransactionSerializer, LoyaltyRewardsSerializer, TaskSerializer
)
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from datetime import date
from .models import Transaction
import json

@csrf_exempt
def update_points(request):
    if request.method == "POST":
        try:
            data = json.loads(request.body)
            user_id = data.get("user_id")
            points_to_add = data.get("points")

            user = User.objects.get(user_id=user_id)
            user.loyalty_score += points_to_add
            user.save()

            return JsonResponse(
                {"message": "Points updated successfully", "updated_points": user.loyalty_score},
                status=200,
            )

        except User.DoesNotExist:
            return JsonResponse({"error": "User not found"}, status=404)
        except Exception as e:
            return JsonResponse({"error": str(e)}, status=500)

    return JsonResponse({"error": "Invalid HTTP method"}, status=405)

@csrf_exempt
def get_transactions(request, user_id):
    if request.method == "GET":
        try:
            print(request, user_id)
            transactions = Transaction.objects.filter(user=user_id).order_by('-date')
            
            if not transactions.exists():
                return JsonResponse({"error": "No transactions found for the given user."}, status=404)
            
            transaction_data = [
                {
                    "transaction_id": t.transaction_id,
                    "reward_name": t.reward_name,
                    "reward_cost": t.reward_cost,
                    "coupon": t.coupon,
                    "date": t.date.strftime('%Y-%m-%d'),
                }
                for t in transactions
            ]
            
            return JsonResponse({"transactions": transaction_data}, status=200)

        except Transaction.DoesNotExist:
            return JsonResponse({"error": "No transactions found for the given user."}, status=404)
        except Exception as e:
            return JsonResponse({"error": f"An unexpected error occurred: {str(e)}"}, status=500)

    return JsonResponse({"error": "Invalid HTTP method. Only GET is allowed."}, status=405)


@csrf_exempt
def redeem_reward(request):
    if request.method == "POST":
        try:
            data = json.loads(request.body)
            user_id = data.get("user_id")
            reward_id = data.get("reward_id")
            coupon = data.get("coupon")

            user = User.objects.get(user_id=user_id)
            reward = LoyaltyRewards.objects.get(reward_id=reward_id)

            if user.loyalty_score < reward.points_required:
                return JsonResponse({"error": "Not enough points to redeem this reward"}, status=400)

            user.loyalty_score -= reward.points_required
            user.save()

            Transaction.objects.create(
                user=user,
                date=date.today(),
                reward_name=reward.reward_name,
                reward_cost=reward.points_required,
                coupon= coupon
            )

            return JsonResponse({
                "message": "Reward redeemed successfully",
                "coupon": coupon,
                "remaining_points": user.loyalty_score,
            }, status=200)

        except User.DoesNotExist:
            return JsonResponse({"error": "User not found"}, status=404)
        except LoyaltyRewards.DoesNotExist:
            return JsonResponse({"error": "Reward not found"}, status=404)
        except Exception as e:
            return JsonResponse({"error": str(e)}, status=500)

    return JsonResponse({"error": "Invalid HTTP method"}, status=405)

@csrf_exempt
def login_user(request):
    if request.method == "POST":
        try:
            data = json.loads(request.body)
            print("Request data:", data)
            username = data.get("name")
            password = data.get("password")

            user = User.objects.filter(name=username).first()
            if not user:
                return JsonResponse({"error": "User not found"}, status=404)

            if not user.password == password:
                return JsonResponse({"error": "Incorrect password"}, status=401)

            return JsonResponse({
                "user_id": user.user_id,
                "name": user.name,
                "loyalty_score": user.loyalty_score,
                "role": user.role,
            })

        except Exception as e:
            return JsonResponse({"error": str(e)}, status=400)

    return JsonResponse({"error": "Invalid request method"}, status=405)


class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer

class RewardViewSet(viewsets.ModelViewSet):
    queryset = Reward.objects.all()
    serializer_class = RewardSerializer

class TransactionViewSet(viewsets.ModelViewSet):
    queryset = Transaction.objects.all()
    serializer_class = TransactionSerializer

class LoyaltyRewardsViewSet(viewsets.ModelViewSet):
    queryset = LoyaltyRewards.objects.all()
    serializer_class = LoyaltyRewardsSerializer

class TasksViewSet(viewsets.ModelViewSet):
    queryset = Tasks.objects.all()
    serializer_class = TaskSerializer
