# Deploy an Web Application to Amazon ECS with EC2, Docker, ECR, Load balancer, Fargate

ELASTIC CONTAINER SERVICE
----------
Amazon Elastic Container Service (ECS), also known as Amazon EC2 Container Service, is a managed service that allows users to run Docker-based applications packaged as containers across a cluster of EC2 instances. Running simple containers on a single EC2 instance is simple but running these applications on a cluster of instances and managing the cluster is being administratively heavy process. With ECS, Fargate launch type, the load, and responsibility of managing the EC2 cluster is transferred over to the AWS and you can focus on application development rather than management of your cluster architecture.

FARGATE
-----------
Is the AWS service that allows ECS to run containers without having to manage and provision the resources required for running these applications.

ECS : Elastic Container Service
---

a) Pas  : Services to run container

b) Works as a pay as you go model 

c) Services in AWS to run container at scale

--> ECS can be operated in 2 ways:

1) EC2 Launch type (Manage your own server)

2) Serverless (Fargate)


Resources required for this project :
---------

 EC2 | DOCKER | ECR | ECS | FARGATE | APPLICATION LOAD BALANCER
 

EXECUTION STEPS :
-------

STEP 1 :
 Lauch EC2 instance,
 install Docker,
 Build dockerimage .

![image](https://github.com/RanguRahul/ECS-FARGATE/assets/120587828/72575a21-24fa-493c-97a6-1a799f94ceb9)




STEP 2 :

 Creating ECR in Linux OR Windows
 
 ![image](https://github.com/RanguRahul/ECS-FARGATE/assets/120587828/bc5d1965-fbbb-48cd-88f0-34e2cf40e11f)

 Login to ECR

                aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/i2d4i5f8

 
 Tag existing image as AWS ECR repo
 
                docker tag myecr-repo:latest public.ecr.aws/i2d4i5f8/myecr-repo:latest

   ![image](https://github.com/RanguRahul/ECS-FARGATE/assets/120587828/c2f1f8ae-cbcb-4a18-94e1-3cb523bd543f)

 
 Push image into ECR
 
              docker push public.ecr.aws/i2d4i5f8/myecr-repo:latest
 
 ![image](https://github.com/RanguRahul/ECS-FARGATE/assets/120587828/9fba6a6d-f981-45e7-9271-6096b2d95987)


STEPS 3 :

 Creating Application Load Balancer

 ![image](https://github.com/RanguRahul/ECS-FARGATE/assets/120587828/f557723c-4c14-4aa0-9fdb-920ffc424b42)


STEP 4 :

 Create Task Definition 

 Task : It is blue print, which describes how to lauch the AWS container. 
 
![task def](https://github.com/RanguRahul/ECS-FARGATE/assets/120587828/83f781c2-3c05-4e70-a90b-cd01dd018b48)



 Create AWS ECS cluster 
 
 ![cluster](https://github.com/RanguRahul/ECS-FARGATE/assets/120587828/a5033f1f-21f9-4bf1-b7ac-60d1b9b4065c)


 
 Creating Services
 
![service](https://github.com/RanguRahul/ECS-FARGATE/assets/120587828/4681113d-9772-4e23-936b-b249d0a10264)

Steps 5 :

VALIDATION

![image](https://github.com/RanguRahul/ECS-FARGATE/assets/120587828/609a7f7b-37d0-418b-a64b-858d067c9cdb)



