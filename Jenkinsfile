pipeline {
  agent {

    docker {
      image 'cofaone/jenkins_hw1'
    }

  }

  stages {

    stage('Run docker') {
      steps {
      sh 'docker login -u cofaone -p 1qaz2wsx3edc'
      sh 'docker pull cofaone/jenkis_hw1:jenkinshw'
      sh 'docker build .'
            }
    }
  }
}