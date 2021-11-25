# JenkinsDocker
<img src="https://miro.medium.com/max/694/1*mMf0g9ZkI7JSSl7jyX6pZA.jpeg"/>

# Usage

first # pull the image 
```
docker pull jenkins/jenkins

```
sceond # build the docker image
```
docker build -t JCASC .
```

third run the docker

```
docker run -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts-jdk11
```
Once you see the message Jenkins is fully up and running you can go to your browser <localhost:8080> and you should see your Jenkins instance running. Success!

