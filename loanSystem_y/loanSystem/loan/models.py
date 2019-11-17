# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Accountant(models.Model):
    ano = models.CharField(primary_key=True, max_length=8)
    dno = models.CharField(max_length=8)
    aname = models.CharField(max_length=20)
    sex = models.CharField(max_length=2)

    class Meta:
        managed = False
        db_table = 'accountant'


class Amount(models.Model):
    ano = models.CharField(primary_key=True, max_length=8)
    cno = models.CharField(max_length=8)
    ino = models.CharField(max_length=8)
    sum = models.CharField(max_length=8)

    class Meta:
        managed = False
        db_table = 'amount'
        unique_together = (('ano', 'cno'),)


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group_id = models.IntegerField()
    permission_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group_id', 'permission_id'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type_id = models.IntegerField()
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type_id', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user_id = models.IntegerField()
    group_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user_id', 'group_id'),)


class AuthUserUserPermissions(models.Model):
    user_id = models.IntegerField()
    permission_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user_id', 'permission_id'),)


class Creditofficer(models.Model):
    cono = models.CharField(primary_key=True, max_length=8)
    coname = models.CharField(max_length=20)
    sex = models.CharField(max_length=2)
    dname = models.CharField(max_length=20)
    tel = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'creditofficer'


class Customer(models.Model):
    cno = models.CharField(primary_key=True, max_length=8)
    cname = models.CharField(max_length=20)
    email = models.CharField(max_length=50, blank=True, null=True)
    sex = models.CharField(max_length=2)
    c_addr = models.CharField(max_length=20, blank=True, null=True)
    money = models.BigIntegerField(blank=True, null=True)
    idcard = models.CharField(max_length=18)
    is_loan = models.CharField(max_length=2)
    level = models.CharField(max_length=2)
    dno = models.CharField(max_length=8)
    lno = models.CharField(max_length=8)
    ino = models.CharField(max_length=8)
    cono = models.CharField(max_length=8)
    eap = models.CharField(max_length=8)
    loanmoney = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'customer'
        unique_together = (('cno', 'dno', 'lno', 'ino', 'cono', 'eap'),)


class Department(models.Model):
    dno = models.CharField(primary_key=True, max_length=8)
    dname = models.CharField(max_length=20)
    tel = models.CharField(max_length=11, blank=True, null=True)
    d_addr = models.CharField(max_length=20)
    person_in_charge = models.CharField(max_length=20)
    apno = models.CharField(max_length=8)
    aptime = models.CharField(max_length=20)
    cno = models.CharField(max_length=8)
    approver = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'department'
        unique_together = (('dno', 'apno', 'cno'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type_id = models.IntegerField(blank=True, null=True)
    user_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Interest(models.Model):
    ino = models.CharField(primary_key=True, max_length=8)
    cno = models.CharField(max_length=8)
    rate = models.FloatField()
    is_deal = models.CharField(max_length=2)

    class Meta:
        managed = False
        db_table = 'interest'
        unique_together = (('ino', 'cno'),)


class Loan(models.Model):
    lno = models.CharField(primary_key=True, max_length=8)
    cno = models.CharField(max_length=8)
    ino = models.CharField(max_length=8)
    kind = models.CharField(max_length=20)
    money = models.CharField(max_length=20)
    foreclosure = models.CharField(max_length=20)
    limittime = models.CharField(max_length=20)
    recycle = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'loan'
        unique_together = (('lno', 'cno', 'ino'),)
