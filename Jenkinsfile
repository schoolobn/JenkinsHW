pipeline {
  environment {
    registry = "cofaone/jenkins_hw1:jenkinshw"
    registryCredential = 'dockerhub'
}
  
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
        docker.withRegistry( '', registryCredential ) {
        image = docker.image('cofaone/jenkins_hw1:jenkinshw')
        image.pull()
        }
       }
      } 
    }
    stage('Git') {
      steps{
       git url: 'https://github.com/boxfuse/boxfuse-sample-java-war-hello' 
      }
    }
    stage('Build') {
    steps{
      sh 'mvn package'
      script {
          docker.build registry + ":$BUILD_NUMBER"
       }
     }
   }
   stage('Deploy') {
         steps{
            script {
               docker.withRegistry( '', registryCredential ) {
                   dockerImage.push()
               }
            }
         }
      }
  }
}