# Generated by Django 5.1.3 on 2024-11-21 21:37

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("rewards_app", "0004_remove_loyaltyrewards_points_and_more"),
    ]

    operations = [
        migrations.AddField(
            model_name="loyaltyrewards",
            name="reward_name",
            field=models.CharField(default="reward", max_length=100),
        ),
    ]
