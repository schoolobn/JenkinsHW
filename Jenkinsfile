pipeline {
  agent {

    docker {
      image 'cofaone/jenkins_hw1:jenkinshw'
      args '-u root --privileged -v /var/run/docker.sock:/var/run/docker.sock'
    }

  }

  stages {

    stage('Clone docker image') {
      steps {
       script {
        docker.withRegistry('https://registry.hub.docker.com', '895a9dbb-e561-4057-8ef7-1e24b915bf1e') {
        image = docker.image('cofaone/jenkins_hw1:jenkinshw')
        image.pull()
        }
       }
      } 
    }
    stage('Git'){
      steps{
      checkout([$class: 'GitSCM', 
      branches: [[name: '*/test']], 
      doGenerateSubmoduleConfigurations: false, 
      extensions: [[$class: 'RelativeTargetDirectory', 
          relativeTargetDir: 'myapp']], 
      submoduleCfg: [], 
      userRemoteConfigs: [[url: 'https://github.com/boxfuse/boxfuse-sample-java-war-hello.git']]])
      }
    }

  stage('Build'){
    steps{
      sh '''
        cd myapp
        mvn package
        '''

    }
  }
  }

}