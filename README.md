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

**DNS records:** <br>
![alt text](https://github.com/borovoykirill/GKE/blob/final_day/img/GCP-DNS.png "DNS records")
<br>
<br>

**Connected to socks-shop use DNS:** <br>
![alt text](https://github.com/borovoykirill/GKE/blob/final_day/img/socks-shop_dns.png "Access shop via DNS name")
<br>
<br>


**K8s cluster:** <br>
![alt text](https://github.com/borovoykirill/GKE/blob/final_day/img/kub_cluster.png "K8s")
