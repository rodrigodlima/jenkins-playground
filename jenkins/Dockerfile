# Dockerfile
FROM jenkins/jenkins:latest-jdk21
USER root
RUN apt-get update && apt-get install -y bash
USER jenkins
# Copy plugins list and install them
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file=/usr/share/jenkins/ref/plugins.txt
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
# Define where JCasC should look for config files
ENV CASC_JENKINS_CONFIG="/usr/share/jenkins/ref/casc_configs"
# Create the directory and copy the config file(s)
RUN mkdir -p /usr/share/jenkins/ref/casc_configs
COPY jenkins-casc.yaml /usr/share/jenkins/ref/casc_configs/jenkins-casc.yaml
