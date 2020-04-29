pipeline {
  agent {

    docker {
      image 'cofaone/hw:Dockerfile'
    }

  }

  stages {

    stage('Run docker') {
      steps {
      sh 'docker login -u cofaone -p 1qaz2wsx3edc'
      sh 'sudo docker pull cofaone/hw:Dockerfile'
      sh 'sudo docker run cofaone/hw:Dockerfile'
            }
    }
  }
}