FROM jenkins/jenkins:lts

USER root
RUN apt-get update
RUN apt-get install -y maven

USER jenkins

COPY settings.xml /home/jenkins/.m2/settings.xml

# Volumes
#VOLUME /root/.ssh

# Start it all
#COPY init.sh /usr/local/bin/init.sh
#ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/init.sh"]
