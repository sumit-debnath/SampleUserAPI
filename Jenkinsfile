pipeline {
  agent any
  
  environment {
    PROJECT_NAME = "sampleuserapi"
  }
  
  parameters {
    string(name: 'TAG', defaultValue: 'latest', description: 'Docker image tag')
  }
  
  stages {
    stage('Build Docker Image') {
      steps {
        script {
          withDockerRegistry([credentialsId: 'dockerhub', url: '']) {
            def imageName = "${env.PROJECT_NAME}:${params.TAG}"
            def image = docker.build(imageName, '-f Dockerfile .')
            image.push()
          }
        }
      }
    }
  }
}
