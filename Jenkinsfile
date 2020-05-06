pipeline {
  environment {
    registry = "cofaone/tomcathw"
    registryCredential = 'dockerhub'
}
  
  agent {
    docker {
      image 'cofaone/gitmvnhw'
      args '-u root --privileged -v /var/run/docker.sock:/var/run/docker.sock'
    }

  }

  stages {

    stage('Clone docker image') {
      steps {
        sh ' wget https://github.com/schoolobn/JenkinsHW/blob/test/Dockerfile '
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
      sh '''
      mvn package
      '''
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