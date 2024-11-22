# Generated by Django 5.1.3 on 2024-11-21 21:59

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("rewards_app", "0005_loyaltyrewards_reward_name"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="transaction",
            name="loyalty_point",
        ),
        migrations.AddField(
            model_name="transaction",
            name="reward_cost",
            field=models.IntegerField(default=1),
        ),
        migrations.AddField(
            model_name="transaction",
            name="reward_name",
            field=models.CharField(default="reward", max_length=100),
        ),
    ]