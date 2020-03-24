# Ansible
-----------------

### Kirill Baravoy
#### Roles to be created
<br>
<dt> mysql_db: </dt><br>
<dd> 1. Created role:

       $ ansible-galaxy init mysql_db --offline
</dd>
<dd> 2. Install MySQL

[mysql_db](https://github.com/borovoykirill/Ansible/tree/day-2/roles/mysql_db)
</dd>

---
<br>
<dt> mysql_db_user: </dt><br>
<dd> 1. Created role:

        $ ansible-galaxy init mysql_db_user --offline
</dd>
<dd> 2. Create user and DB

[mysql_db_user](https://github.com/borovoykirill/Ansible/tree/day-2/roles/mysql_db_user)
</dd>

---
<br>
<dt> mysql-check: </dt><br>
<dd> 1. Created role:

      $ ansible-galaxy init mysql-check --offline
</dd>
<dd> 2. Deploy service mysql-check

[mysql-check](https://github.com/borovoykirill/Ansible/tree/day-2/roles/mysql-check)
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
<dd> 2. Install packages

[base](https://github.com/borovoykirill/Ansible/tree/day-2/roles/base)
</dd>

---
<br>
<dt> user: </dt><br>
<dd> 1. Created role:

      $ ansible-galaxy init user --offline
</dd>
<dd> 2. Install packages

[user](https://github.com/borovoykirill/Ansible/tree/day-2/roles/user)
</dd>

**Create user:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/create_user.png "Create user")
<br>
<br>

**Add user to sudoers:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/add_user_to_sudoers.png "Sudoers")
<br>
<br>
