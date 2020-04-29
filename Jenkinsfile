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
      sh 'docker login -u cofaone -p 1qaz2wsx3edc'
      sh 'sudo docker pull сofaone/jenkins_hw1:jenkinshw'
      sh 'sudo docker run -ti -v /var/run/docker.sock:/var/run/docker.sock dockercofaone/jenkins_hw1:jenkinshw'
            }
    }
  }
}