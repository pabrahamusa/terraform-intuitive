# Lab work - Intuitive 



**What this repo does**

1. This terraform code will deploy the following
2. vpc
3. Public subnet with a single ec2 instance as bastion
4. Private subnet with two ec2 instances
5. The two ec2 instances has EBS volume attached with size 1 GB



**GitHub Workflow**

The terraform infra is deployed via the following GitHub Workflow

https://github.com/pabrahamusa/terraform-intuitive/blob/main/.github/workflows/terraform-iac.yml

This workflow uses GitHub Actions provided by HashiCorp 



**Executed GitHub Workflow** 

following is an example of successfully executed github workflow

https://github.com/pabrahamusa/terraform-intuitive/actions/runs/5193587742/jobs/9364316001



**Dockerfile output**

Docker file is inside this repo Dockerfile



**Docker build screenshot**

![dockerbuild](/Users/prakash.abraham/disc/working-folder/terraform-intuitive/dockerbuild.jpg)



**Docker image list**

![dockerlist](/Users/prakash.abraham/disc/working-folder/terraform-intuitive/dockerlist.jpg)



**Docker run**

![docker-run](/Users/prakash.abraham/disc/working-folder/terraform-intuitive/docker-run.jpg)



**Docker container list**

![docker-container-ls](/Users/prakash.abraham/disc/working-folder/terraform-intuitive/docker-container-ls.jpg)
