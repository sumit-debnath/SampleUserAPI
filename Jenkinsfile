pipeline {
  agent any
  
  environment {
    PROJECT_NAME = "sampleuserapi"
    DOCKER_USERNAME = credentials('dockerhub')
  }
  
  parameters {
    string(name: 'TAG', defaultValue: 'latest', description: 'Docker image tag')
  }
  
  stages {
    stage('Docker Logout') {
      steps {
        script {
          sh 'docker logout' // Executes the 'docker logout' command
        }
      }
    }
    
    stage('Build Docker Image') {
      steps {
        script {
          withDockerRegistry(credentialsId: 'dockerhub') {
            sh "docker build -t ${PROJECT_NAME}:${TAG}"
          }
        }
      }
    }
  }
}
