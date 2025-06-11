pipeline {
    agent any
    environment {
        REGISTRY = "localhost:5000"
        IMAGE_NAME = "test"
        IMAGE_TAG = "latest"
        FULL_IMAGE = "${REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}"
    }

    stages {
                stage('echo') {
            steps {
                sh "echo $PATH"
                }

            }
        

        stage('Checkout') {
            steps {
                script{                    docker.withRegistry('http://localhost:5000', '3d0ab19b-ea12-4295-bce8-29f1a406d298') {
        echo "Hello"
    }
                }

            }
        }

        
    }

}
