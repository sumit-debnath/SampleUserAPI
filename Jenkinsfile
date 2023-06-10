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
          withDockerRegistry([credentialsId: 'dockerhub', url: 'https://registry.hub.docker.com/']) {
            def imageName = "${env.DOCKER_USERNAME}/${env.PROJECT_NAME}:${params.TAG}"
            def image = docker.build(imageName, '-f Dockerfile .')
            image.push()
          }
        }
      }
    }
  }
}
