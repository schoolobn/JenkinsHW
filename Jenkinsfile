pipeline {
  agent {

    docker {
      image 'cofaone/jenkinshw1'
    }

  }

  stages {

    stage('Run docker') {
      steps {
      sh 'docker login -u cofaone -p 1qaz2wsx3edc'
      sh 'docker pull cofaone/jenkishw1:jenkinshw'
      sh 'docker build .'
            }
    }
  }
}