pipeline {
  agent {

    docker {
      image 'cofaone/jenkins_hw1:jenkinshw'
      args '-u root --privileged -v /var/run/docker.sock:/var/run/docker.sock'
    }

  }

  stages {

    stage('Run docker') {
      steps {
      sh 'docker login -u cofaone -p 1qaz2wsx3edc'
      sh 'sudo docker pull сofaone/jenkins_hw1:jenkinshw'
     
            }
    }
  }
}
