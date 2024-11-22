from django.contrib import admin
from .models import User, Reward, Transaction, LoyaltyRewards, Tasks

admin.site.register(User)
admin.site.register(Reward)
admin.site.register(Transaction)
admin.site.register(LoyaltyRewards)
admin.site.register(Tasks)

