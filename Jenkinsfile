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
                    withDockerRegistry([credentialsId: '305d6b1d-8b3a-4cd7-a005-2498ea63b75d', url: 'http://localhost:5000']) {
        echo "Hello"
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
