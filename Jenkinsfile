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
       script {
        docker.withRegistry('https://registry.hub.docker.com', '895a9dbb-e561-4057-8ef7-1e24b915bf1e') {
        image = docker.image('cofaone/jenkins_hw1:jenkinshw')
        image.pull()
        }
       }
      } 
    }
  }

}