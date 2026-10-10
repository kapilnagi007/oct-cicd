# oct-cicd
This Repo I will include the Docker, K8s, Terraform and CICD pipeline

# Docker Steps
**Download Docker image**
Docker pull kopilnagi/october-cstm-nginx:v1

**Create and Run container from downloaded image**
Docker run -d -n cstm-nginx -p 8081:80 kopilnagi/october-cstm-nginx:v1

**go inside the container**
Docker exec -it CONTAINERNAME

**Create custom image from your container**
Docker commit CONTAINERID CSTMIMAGENAME:VERSION

**tagging your custom image with your registry url**
Docker tag CSTMIMAGENAME:VERSION USERNAME/CSTMIMAGENAME:VERSION

**Upload image to the registry**
Docker push USERNAME/CSTMIMAGENAME:VERSION 
