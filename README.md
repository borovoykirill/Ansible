# Ansible

### Kirill Baravoy
<br>
All variables you can find at main playbook:<br>

[practice-2.yml](https://github.com/borovoykirill/Ansible/blob/day-2/practice-2.yml)

#### Roles

<br>
<dt> base: </dt><br>
<dd> 1. Created role:

      $ ansible-galaxy init base --offline
</dd>
<dd> 2. Install packages and ensures that folder exists and requiretty disabled: </dd>

[base/task](https://github.com/borovoykirill/Ansible/blob/day-2/roles/base/tasks/main.yml) <br>
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
<dd> 2. Create user: </dd>

[user/task](https://github.com/borovoykirill/Ansible/blob/day-2/roles/user/tasks/main.yml) <br>
[user/vars](https://github.com/borovoykirill/Ansible/blob/day-2/roles/user/vars/main.yml)
</dd>

**Create user:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/create_user.png "Create user")
<br>
<br>

**Add user to sudoers:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/add_user_to_sudoers.png "Sudoers")
<br>
<br>

---
<br>
<dt> msg-service: </dt><br>
<dd> 1. Created role:

       $ ansible-galaxy init msg-service --offline
</dd>
<dd> 2. Deploy msg-service:

[mysql_db/task](https://github.com/borovoykirill/Ansible/blob/day-2/roles/msg-service/tasks/main.yml) <br>
[mysql_db/templates](https://github.com/borovoykirill/Ansible/tree/day-2/roles/msg-service/templates)
[mysql_db/handlers](https://github.com/borovoykirill/Ansible/tree/day-2/roles/msg-service/handlers)
</dd>

**Rework msg-service:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/rework_ansible.png "Rework msg-service")
<br>
<br>

**MySQL service status:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/status_mysql.png "MySQL status!")
<br>
<br>
---
<br>
<dt> mysql_db: </dt><br>
<dd> 1. Created role:

       $ ansible-galaxy init mysql_db --offline
</dd>
<dd> 2. Install MySQL:

[mysql_db/task](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql_db/tasks/main.yml)
</dd>

---
<br>
<dt> mysql_db_user: </dt><br>
<dd> 1. Created role:

        $ ansible-galaxy init mysql_db_user --offline
</dd>
<dd> 2. Create user, DB with python-mysqldb:

[mysql_db_user/task](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql_db_user/tasks/main.yml) <br>
[mysql_db_user/handlers](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql_db_user/handlers/main.yml)
</dd>

---
<br>
<dt> mysql-check: </dt><br>
<dd> 1. Created role:

      $ ansible-galaxy init mysql-check --offline
</dd>
<dd> 2. Deploy service mysql-check:

[mysql-check/task](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql-check/tasks/main.yml) <br>
[mysql-check/handlers](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql-check/handlers/main.yml) <br>
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
