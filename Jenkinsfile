pipeline {
  agent {

    docker {
      image 'cofaone/jenkins_hw1:jenkinshw'
    }

  }

  stages {

    stage('Run docker') {
      steps {
      sh 'sudo docker login -u cofaone -p 1qaz2wsx3edc'
#     sh 'docker pull cofaone/jenkins_hw1:jenkinshw'
      sh 'sudo docker run cofaone/jenkins_hw1:jenkinshw'
            }
    }
  }
}