# Generated by Django 5.1.3 on 2024-11-21 21:36

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        (
            "rewards_app",
            "0003_user_password_user_role_alter_user_loyalty_score_and_more",
        ),
    ]

    operations = [
        migrations.RemoveField(
            model_name="loyaltyrewards",
            name="points",
        ),
        migrations.RemoveField(
            model_name="loyaltyrewards",
            name="redemption_date",
        ),
        migrations.RemoveField(
            model_name="loyaltyrewards",
            name="user",
        ),
    ]
