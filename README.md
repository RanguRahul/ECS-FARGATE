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
 Creating ECR
 Login to ECR
 Tag existing image as AWS ECR repo
 Push image into ECR

STEPS 3 :

 Creating Application Load Balancer

STEP 4 :
 Create Task Definition | Create AWS ECS cluster | Creating Services

Steps 5 :
VALIDATION
