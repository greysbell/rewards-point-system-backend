from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import (
    UserViewSet, RewardViewSet,
    TransactionViewSet, LoyaltyRewardsViewSet, TasksViewSet
)
from . import views

router = DefaultRouter()
router.register(r'users', UserViewSet)
router.register(r'rewards', RewardViewSet)
router.register(r'transactions', TransactionViewSet)
router.register(r'loyaltyrewards', LoyaltyRewardsViewSet)
router.register(r'tasks', TasksViewSet)

urlpatterns = [
    path('transactions/<int:user_id>/', views.get_transactions, name='get_transactions'),
    path('', include(router.urls)),
    path("login/", views.login_user, name="login"),
    path("redeem-reward/", views.redeem_reward, name="redeem_reward"),
     path("update-points/", views.update_points, name="update_points")
]

