# JenkinsDocker

# Usage

first pull the image 
```
docker pull jenkins/jenkins

```
sceond build the image with tag 
```
docker build -t JCASC .
```

third run the docker

```
docker run -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts-jdk11
```
