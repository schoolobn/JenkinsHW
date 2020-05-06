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
    stage('Building image') {
      steps{
          script {
              dockerImage = docker.build registry + ":$BUILD_NUMBER"
            }
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