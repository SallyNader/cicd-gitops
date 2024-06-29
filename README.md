

![27-6new drawio](https://github.com/SallyNader/cicd-gitops/assets/14328150/88fd8e69-5b27-41ec-ba97-07e8fdaaf57f)


## Project Summery:
This project aims to deploy Java application on Kubernetes cluster using some tools.
<br/>

## Tools:

1- EC2 instance            <br/>
2- Terraform        <br/>
3- Git<br/>
4- Jenkins<br/>
5- Maven <br/>
6- Sonarqube<br/>
7- Docker <br/>
8- ArgoCD<br/>
9- Minikube
## Prerequisites:

**1- Jenkins Server,** if you want to create Jenkins server on EC2 instance you can clone the project and navigate to **ec2/terraform** folder and change the variables in **terraform.tfvars** and run <br/>

**terraform init <br/>
terraform apply <br/>**

Jenkins and Docker will be installed on the launch of the instance.
 <br/>

**2- Java Application** code hosted on Git repository. <br/>

**3- SonarQube** for analyzing Java code. <br/>

**4- Docker Images,**  I created two images, **sally94/cicd-maven** to be used in docker agent in the pipeline and also I created **sally94/cicd** image to be used in the Kubernetes deployment.<br/>

**5- Kubernetes Cluster,** I used Minikube.<br/>

**6- ArgoCD,** I installed ArgoCD on Minikube and I created the application by running <br/>

**kubectl apply -f argocd/application.yml**
