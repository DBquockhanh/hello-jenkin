pipeline {
    agent any

    environment {
        REGISTRY = "localhost:5000"
        IMAGE_NAME = "test"
        IMAGE_TAG = "latest"
        FULL_IMAGE = "${REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}"
    }

    stages {
        // stage("verify tooling"){
        //     steps{
        //         sh '''
        //         docker info
        //         docker version
        //         '''
        //     }
        // }
        stage('Checkout') {
            steps {
                    withDockerRegistry([credentialsId: '3d0ab19b-ea12-4295-bce8-29f1a406d298', url: 'http://localhost:5000']) {
        echo "Hello"
    }
            }
        }

        
    }

}
