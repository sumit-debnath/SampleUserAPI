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
            def username = DOCKER_USERNAME.username
            sh "docker build -t ${PROJECT_NAME}:${TAG} ."
            sh "docker tag ${PROJECT_NAME}:${TAG} ${username}/${PROJECT_NAME}:${TAG}"
          }
        }
      }
    }
  }
}
