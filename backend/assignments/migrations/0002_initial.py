# Generated by Django 4.1.2 on 2022-11-12 01:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('users', '0001_initial'),
        ('courses', '0001_initial'),
        ('assignments', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='scores',
            name='students',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='users.students'),
        ),
        migrations.AddField(
            model_name='assignments',
            name='courses',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='courses.courses'),
        ),
    ]
