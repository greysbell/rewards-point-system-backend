from django.db import models

class User(models.Model):
    user_id = models.AutoField(primary_key=True) 
    name = models.CharField(max_length=255, default='')  
    password = models.CharField(max_length=128, default='123') 
    role = models.CharField(max_length=50, default='user')  
    loyalty_score = models.IntegerField(default=0) 

    def __str__(self):
        return f"User {self.user_id} ({self.name}) with loyalty score {self.loyalty_score}"


class Reward(models.Model):
    reward_id = models.AutoField(primary_key=True) 
    points = models.IntegerField(unique=True)
    reward_date_timestamp = models.CharField(max_length=255, unique=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, db_column='User_User_ID')

    def __str__(self):
        return f"Reward {self.reward_id} with {self.points} points"


class Transaction(models.Model):
    transaction_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, db_column='User_User_ID')
    date = models.DateField(null=True)
    reward_name = models.CharField(max_length=100, default='reward')
    reward_cost = models.IntegerField( default =1)
    coupon = models.CharField(max_length=10, default='1')

    def __str__(self):
        return f"Transaction {self.transaction_id} on {self.date}"
    
class Tasks(models.Model):
    task_id = models.AutoField(primary_key=True) 
    task_name = models.CharField(max_length=100, default='task')
    task_description = models.CharField(max_length=300)
    points = models.IntegerField()

    def __str__(self):
        return f"Task {self.task_id} with {self.points} points"


class LoyaltyRewards(models.Model): 
    reward_id = models.AutoField(primary_key=True)
    reward_name = models.CharField(max_length=100, default='reward')
    reward_description = models.CharField(max_length=300)
    points_required = models.IntegerField()

    def __str__(self):
        return f"LoyaltyReward {self.reward_id} requiring {self.points_required} points"
