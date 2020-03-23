# Ansible
-----------------

### Kirill Baravoy
#### Task 1
<br>
  <dt> Configure remote connection: </dt><br>
  <dd> 1. On remote host allowed auth with password. </dd>
  <dd> 2. Created user:

       $ ansible nodes -i inventory -u root -k -m user -a "name=devops append=yes shell=/bin/bash"
 </dd>
  <dd> 3. Configured sudoers priviliges with copy file "devops"

        $ ansible nodes -i inventory -u root -k -m copy -a "src=devops dest=/etc/sudoers.d/"

   </dd>
   <dd> 4. Generated and add public key:

         $ ansible nodes -i inventory -u root -k -m authorized_key -a "user=devops path=/home/devops/.ssh/authorized_keys key='{{ lookup('file', 'files/devops.ssh.id-rsa.pub') }}'"
  </dd>
  <dd> 5. Added next string into inventory:

        [nodes]
        host-1 ansible_host=10.128.15.231 ansible_user=devops ansible_connection=ssh ansible_ssh_private_key_file=~/.ssh/id_rsa
 </dd>
<br>
<br>

**Created user: devops:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-1/img/create_user_devops.png "User: devops")
<br>
<br>

**Cole devops.sudoers:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-1/img/cp_sudoers.png "Maked priviliges")
<br>
<br>


**Added public key:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-1/img/authorized_keys.png "Added public key")
<br>
<br>

**Checked ssh via user: devops:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-1/img/devops_ssh.png "Checked ssh via devops with -m ping")
<br>
<br>

#### Task 2
<br>
  <dt> Create first PlayBook: </dt><br>
  <dd> 1. Create  PlayBook - msg-service.yaml.

  [msg-service](https://github.com/borovoykirill/Ansible/blob/day-1/msg-service.yml)

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
