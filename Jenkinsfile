pipeline {
  agent {

    docker {
      image 'cofaone/hw'
    }

  }

  stages {

    stage('Run docker') {
      steps {
      sh 'docker login -u cofaone -p 1qaz2wsx3edc'
      sh 'docker pull cofaone/hw:Dockerfile'
      sh 'docker build .'
            }
    }
  }
}