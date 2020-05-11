Steps from https://jenkins.io/doc/book/installing/:
  1. docker network create jenkins
  2. docker volume create jenkins-docker-certs
  3. docker volume create jenkins-data

  4. docker container run \
  --name jenkins-docker \
  --rm \
  --detach \
  --privileged \
  --network jenkins \
  --network-alias docker \
  --env DOCKER_TLS_CERTDIR=/certs \
  --volume jenkins-docker-certs:/certs/client \
  --volume jenkins-data:/var/jenkins_home \
  --publish 2376:2376 \
  docker:dind

docker container run \
  --name jenkins-blueocean \
  --rm \
  --detach \
  --network jenkins \
  --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client \
  --env DOCKER_TLS_VERIFY=1 \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  jenkinsci/blueocean

user: admin
pass: admin

JENKINS_URL/me/my-views/view/all/job/java/job/webscraper-ui/build?token=TOKEN_NAME
JENKINS_URL/job/pipelines/job/Java_pipeline/build?token=TOKEN_NAME


http://localhost:8080/me/my-views/view/all/job/java/job/webscraper-ui/build?token=KALAH_TOKEN
http://localhost:8080/job/pipelines/job/Java_pipeline/build?token=KALAH_TOKEN

docker run --init jenkins/inbound-agent -url http://jenkins-server:port <secret> <agent name>

dockerhub: 50d6d057-2699-431d-8e56-1423de8f32a1
