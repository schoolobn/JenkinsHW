pipeline {
    environment {
    registry = "cofaone/tomcathw"
    registryCredential = 'dockerhub'
    dockerImage = ''
  } 
  agent {
    docker {
      image 'cofaone/gitmvnhw'
      args '-u root --privileged -v /var/run/docker.sock:/var/run/docker.sock'
    }

  }
  stages{
      stage('Getting Dockerfile from github'){
          steps{
            git 'https://github.com/schoolobn/DockerJenkins.git'     
          }
      }
      stage('Building image') {
         steps{
            script {
               dockerImage = docker.build registry + ":$BUILD_NUMBER"
            }
        }
      }
      stage('Deploy our image') {
         steps{
            script {
               docker.withRegistry( '', registryCredential ) {
                   dockerImage.push()
               }
            }
         }
      }
      stage('Cleaning up') {
         steps{
            sh "docker rmi $registry:$BUILD_NUMBER"
         }
      }
   }
}