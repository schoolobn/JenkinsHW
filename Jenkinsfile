pipeline {
  agent {

    docker {
      image 'cofaone/jenkins_hw1:jenkinshw'
    }

  }

  stages {

    stage('Run docker') {
      steps {
      sh 'docker login -u cofaone -p 1qaz2wsx3edc'
      sh 'sudo docker pull cofaone/jenkins_hw1:jenkinshw'
      sh 'sudo docker run -v /var/run/docker.sock:/var/run/docker.sock cofaone/jenkins_hw1:jenkinshw'
            }
    }
  }
}