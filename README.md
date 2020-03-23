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
