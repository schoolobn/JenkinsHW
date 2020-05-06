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
      git url: 'https://github.com/schoolobn/DockerJenkins.git'
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
      docker build .
      '''
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