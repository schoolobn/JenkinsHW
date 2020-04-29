pipeline {
  agent {

    docker {
      image 'https://hub.docker.com/repository/docker/cofaone/jenkins_hw1'
    }

  }

    stage('Make docker image') {
      steps {
        sh 'cp -R gateway-api/build/libs/* docker-setup/shop/gateway-api && cd docker-setup/shop/gateway-api && docker build --tag=gateway-api .'
        sh '''docker tag gateway-api https://hub.docker.com/repository/docker/cofaone/jenkins_hw1 && docker push https://hub.docker.com/repository/docker/cofaone/jenkins_hw1'''

      }
    }

    stage('Run docker on devbe-srv01') {
      steps {
        sh 'ssh-keyscan -H cofaone >> ~/.ssh/known_hosts'
        sh '''ssh jenkins@cofaone << EOF
	sudo docker pull https://hub.docker.com/repository/docker/cofaone/jenkins_hw1
	cd /etc/JenkinsHW/docker
	sudo docker-compose up -d
EOF'''
      }
    }
  }
  triggers {
    pollSCM('*/1 H * * *')
  }
}