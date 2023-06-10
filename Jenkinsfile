pipeline {
    agent any

    environment {
        DOCKER_HUB_USERNAME = credentials('dockerhub-username')
        DOCKER_HUB_PASSWORD = credentials('dockerhub-password')
        DOCKER_IMAGE_NAME = 'sampleuserapi'
    }
    parameters {
    string(name: 'TAG', defaultValue: 'latest', description: 'Docker image tag')
  }
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t ${DOCKER_IMAGE_NAME}:${TAG} .'
            }
        }

        stage('Publish') {
            steps {
                script {
                    try {
                        withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                            sh "docker login -u ${DOCKER_HUB_USERNAME} -p ${DOCKER_HUB_PASSWORD}"
                            sh "docker push ${DOCKER_IMAGE_NAME}:${TAG}"
                        }
                    } finally {
                        dockerLogout()
                    }
                }
            }
        }
    }

    post {
        always {
            dockerLogout()
        }
    }
    
    def dockerLogout() {
        script {
            sh 'docker logout'
        }
    }
}
