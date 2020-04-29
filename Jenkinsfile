pipeline {
  agent {
    docker {
      image 'https://hub.docker.com/repository/docker/cofaone/jenkins_hw1'
    }
  }
  stages {   
      stage('Run docker on host') {
      steps {
        sh 'ssh-keyscan -H https://hub.docker.com/repository/docker/cofaone >> ~/.ssh/known_hosts'
        sh 'ssh jenkins@cofaone << EOF'
	sudo docker pull https://hub.docker.com/repository/docker/cofaone/jenkins_hw1
	cd /etc/JenkinsHW/docker
	sudo docker-compose up -
            }  
     } 
   }
}


pipeline {
  agent {

    docker {
      image 'https://hub.docker.com/repository/docker/cofaone/jenkins_hw1'
    }

  }

  stages {


    stage('Make docker image') {
      steps {
        sh 'cp -R gateway-api/build/libs/* docker-setup/shop/gateway-api && cd docker-setup/shop/gateway-api && docker build --tag=gateway-api .'
        sh '''docker tag gateway-api devcvs-srv01:5000/shop2-backend/gateway-api:2-staging && docker push devcvs-srv01:5000/shop2-backend/gateway-api:2-staging'''

      }
    }

    stage('Run docker') {
      steps {
        sh 'ssh-keyscan -H https://hub.docker.com/repository/docker/cofaone>> ~/.ssh/known_hosts'
	sudo docker-compose up -d
      }
    }
  }
}