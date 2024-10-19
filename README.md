This project is a basic hello world node js application that runs on port 3000.

Simple node app directory contains application code and dockerfile (Task 1)

kubernetes directory contains kubernetes deployment yaml with nginx image (Task 2)

Terraform directory contains infrastructure to setup ec2 on AWS with nginx and docker using user data scripts. Ansible directory contains playbook and inventory file (Task 3)

./github/workflows has 2 files terraform.yml for creating ec2 on aws and deployment.yml to deploy node js application on ec2 using docker image and ansible

nginx directory contains nginx.conf file.(Task 3)
