# Ansible

### Kirill Baravoy
#### Roles to be created
<br>
<dt> mysql_db: </dt><br>
<dd> 1. Created role:

       $ ansible-galaxy init mysql_db --offline
</dd>
<dd> 2. Install MySQL

[mysql_db/task](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql_db/tasks/main.yml)
</dd>

---
<br>
<dt> mysql_db_user: </dt><br>
<dd> 1. Created role:

        $ ansible-galaxy init mysql_db_user --offline
</dd>
<dd> 2. Create user, DB with python-mysqldb

[mysql_db_user/task](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql_db_user/tasks/main.yml) <br>
[mysql_db_user/vars](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql_db_user/vars/main.yml) <br>
[mysql_db_user/handlers](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql_db_user/handlers/main.yml)
</dd>

---
<br>
<dt> mysql-check: </dt><br>
<dd> 1. Created role:

      $ ansible-galaxy init mysql-check --offline
</dd>
<dd> 2. Deploy service mysql-check

[mysql-check/task](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql-check/tasks/main.yml)
[mysql-check/vars](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql-check/vars/main.yml)
[mysql-check/handlers](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql-check/handlers/main.yml)
[mysql-check/files](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql-check/files/mysql-check.service)
</dd>

**MySQL service status:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/status_mysql.png "MySQL status!")
<br>
<br>

**mysql-check service status:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/status_mysql-check.png "mysql-check status")
<br>
<br>

**MySQL connected:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/mysql_connected.png "Connected!")
<br>
<br>

---
<br>
<dt> base: </dt><br>
<dd> 1. Created role:

      $ ansible-galaxy init base --offline
</dd>
<dd> 2. Install packages </dd>

[roles/base](https://github.com/borovoykirill/Ansible/tree/day-2/roles/base)
</dd>

**Ensures that requiretty disabled for all users:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/base_!req.png "Default !requiretty")
<br>
<br>
---
<br>
<dt> user: </dt><br>
<dd> 1. Created role:

      $ ansible-galaxy init user --offline
</dd>
<dd> 2. Create user </dd>

[roles/user](https://github.com/borovoykirill/Ansible/tree/day-2/roles/user)
</dd>

**Create user:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/create_user.png "Create user")
<br>
<br>

**Add user to sudoers:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/add_user_to_sudoers.png "Sudoers")
<br>
<br>
