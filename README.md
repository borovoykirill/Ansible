# Ansible

### h-3: Kirill Baravoy
<br>
At this task I created "nginx-base" role which installs nginx and "web-service" role which add custom nginx <br>

[nginx-base](https://github.com/borovoykirill/Ansible/blob/day-2/practice-2.yml) <br>
[web-service](https://github.com/borovoykirill/Ansible/blob/day-2/practice-2.yml)

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

**Ensures that ansible facts folder exists:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/path_facts_true.png "Ansible facts folder existsy")
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
[mysql_db/templates](https://github.com/borovoykirill/Ansible/tree/day-2/roles/msg-service/templates) <br>
[mysql_db/handlers](https://github.com/borovoykirill/Ansible/blob/day-2/roles/msg-service/handlers/main.yml)
</dd>

**Rework msg-service:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/rework_ansible.png "Rework msg-service")
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
<dd> 2. Create user, DB with python-mysqldb and encrypt pass:

[mysql_db_user/task](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql_db_user/tasks/main.yml) <br>
[mysql_db_user/handlers](https://github.com/borovoykirill/Ansible/blob/day-2/roles/mysql_db_user/handlers/main.yml)
</dd>

**Encrypt password:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/encrypt_pass.png "Encrypt password")
<br>
<br>

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

---
<br>
<dt> Sanity test and facts : </dt><br>
<dd> I create test for check all services via port and if msg-service config file  changed than service is goinng restart and it leaves facts about it.

[here you will find my Sanity test](https://github.com/borovoykirill/Ansible/blob/day-2/practice-2.yml) <br>
[handlers for create fact](https://github.com/borovoykirill/Ansible/blob/day-2/roles/msg-service/handlers/main.yml)
</dd>

**Sanity test:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/sanity_test.png "Sanity test")
<br>
<br>

**Facts:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/fact1.png "Task and handlers for sanity test") <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/check_facts.png "Check facts")
<br>
<br>

---
<br>
<dt> Test playbook quality: </dt><br>
<dd> Use command


    $ ansible-lint -x 201,301,305 practice-2.yml
</dd>
<dd> Run playbook several times to make sure no side effect happens. </dd>
<br>

**Ansible-lint** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/ansible-lint.png "Ansible-lint")
<br>
<br>

**Run playbook several times:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-2/img/run_playbook_several_times.png "changed=0") <br>

<br>
<br>
