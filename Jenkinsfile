pipeline {
    agent any

    environment {
        REGISTRY = "localhost:5000"
        IMAGE_NAME = "test"
        IMAGE_TAG = "latest"
        FULL_IMAGE = "${REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${IMAGE_NAME}", ".")
                }
            }
        }

        stage('Login to Registry') {
            steps {
                withCredentials([usernamePassword(credentialsId: '	305d6b1d-8b3a-4cd7-a005-2498ea63b75d', usernameVariable: 'admin', passwordVariable: 'admin')]) {
                    sh 'echo $DOCKER_PASS | docker login $REGISTRY -u $DOCKER_USER --password-stdin'
                }
            }
        }

        stage('Tag and Push') {
            steps {
                script {
                    sh """
                        docker tag ${IMAGE_NAME} ${FULL_IMAGE}
                        docker push ${FULL_IMAGE}
                    """
                }
            }
        }
    }

    post {
        always {
            sh 'docker logout $REGISTRY'
        }
    }
}
