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

<br>
<dt> mysql_db_user: </dt><br>
<dd> 1. Created role:

        $ ansible-galaxy init mysql_db_user --offline
</dd>
<dd> 2. Create user and DB

[mysql_db_user](https://github.com/borovoykirill/Ansible/tree/day-2/roles/mysql_db_user)
</dd>

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

<br>
<dt> base: </dt><br>
<dd> 1. Created role:

      $ ansible-galaxy init base --offline
</dd>
<dd> 2. Install packages

[base](https://github.com/borovoykirill/Ansible/tree/day-2/roles/base)
</dd>



#### Task 2
<br>
  <dt> Create first PlayBook: </dt><br>
  <dd> 1. Create  PlayBook - msg-service.yaml.

  [msg-service.yaml](https://github.com/borovoykirill/Ansible/blob/day-1/msg-service.yml)

  </dd>
  <dd> 2. Created and make some minor fix into unit file:

[msg-service.service](https://github.com/borovoykirill/Ansible/blob/day-1/files/msg-service.service)
 </dd>
  <dd> 3. Created and make some minor fix into conf file:

[msg.conf](https://github.com/borovoykirill/Ansible/blob/day-1/files/msg-service.conf)

   </dd>
   <dd> 5. Apply playbook:

         $ ansible-playbook msg-service.yml -i inventory -v
  </dd>
  <dd> 6. Check PlayBook for mistake with ansible-lint:

        $ ansible-lint -x 201,301,305 msg-service.yml
 </dd>
 <dd> 7. Run PlayBook sever times for check.
</dd>
<br>
<br>

**Connected to msg-service:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-1/img/almighty_Ansible.png "Hello, Ansible!")
<br>
<br>

**Run PlayBook several times:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-1/img/run_playbook_several_times.png "changed != 0")
<br>
<br>


**Used ansible-lint:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-1/img/check-lint.png "Check for mistakes")
<br>
<br>

**My project tree:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-1/img/tree.png "Project tree")
<br>
<br>
