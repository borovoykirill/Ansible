# Ansible

### h-3: Kirill Baravoy
<br>
For this home work I re-work previously task h-2. <br>At this task I created "nginx-base" role which installs nginx and "web-service" role which adds custom nginx.<br>

By the way I used domain name "nginx.kbaravoy.palypit.net" for nginx. I configured proxy pass for "mysql-check" and "msg-service" <br>
[nginx-base/tasks](https://github.com/borovoykirill/Ansible/blob/day-3/roles/nginx-base/tasks/main.yml) <br>
[web-service/tasks](https://github.com/borovoykirill/Ansible/blob/day-3/roles/web-service/tasks/main.yml) <br>
[web-service/handlers](https://github.com/borovoykirill/Ansible/blob/day-3/roles/web-service/handlers/main.yml) <br>
[web-service/templates](https://github.com/borovoykirill/Ansible/blob/day-3/roles/web-service/templates/backend.conf) <br>

In my home task I used main playbook where I specify role for each node, also I tried use a tags. And for test my ansible playbook I used only GCP via terraform. <br>
[main.yml](https://github.com/borovoykirill/Ansible/blob/day-3/main.yml) <br>
[GCP](https://github.com/borovoykirill/Ansible/tree/day-3/GCP-terraform)

**mysql-check via domain name** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-3/img/redirect_mysql.png "Access to mysql-check")
<br>
<br>

**msg-service via domain name:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-3/img/redirect_msg.png "Access to msg-service")
<br>
<br>


In the end I checked my playbook for quality by re-run playbook for several times and used ansible-lint. <br>

**Used ansible-lint** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-3/img/ansible-lint.png "Playbook without errors")
<br>
<br>

**Re-run playbook:** <br>
![alt text](https://github.com/borovoykirill/Ansible/blob/day-3/img/run_playbook.png "changed=0")
<br>
<br>
