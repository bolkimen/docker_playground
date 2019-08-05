FROM maven:3.5-jdk-8

# install Git
RUN apt-get -y install git

WORKDIR /proj

RUN git clone https://github.com/bolkimen/kalah.git

RUN mvn -f /proj/kalah package -DskipTests

RUN cp /proj/kalah/target/*.jar /proj/kalah.jar

EXPOSE 8090

CMD [ "sh", "-c", "java -XX:+PrintFlagsFinal -XX:+PrintGCDetails $JAVA_OPTIONS -jar /proj/kalah.jar"]
