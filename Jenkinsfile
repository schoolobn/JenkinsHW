pipeline {
  agent {

    docker {
      image 'cofaone/jenkins_hw1:jenkinshw'
    }

  }

  stages {

    stage('Run docker') {
      steps {

      sh 'sudo docker run -ti -v /var/run/docker.sock:/var/run/docker.sock dockercofaone/jenkins_hw1:jenkinshw'
            }
    }
  }
}