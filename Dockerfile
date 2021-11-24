FROM jenkins/jenkins

# disable the setup wizard as we will set up jenkins as code :)
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false 

# tell the JCASC plugin where to find the yaml file
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml 

# copy the list of plugins we want to install
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

# run the install-plugins script to install the plugins
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# copy the config-as-code yaml file into the image
COPY casc.yaml /var/jenkins_home/casc.yaml