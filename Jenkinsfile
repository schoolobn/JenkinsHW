pipeline {
  agent {

    docker {
      image 'cofaone/hw'
    }

  }

  stages {

    stage('Run docker') {
      steps {
sh 'docker login -u cofaone'
      }
    }
  }
}