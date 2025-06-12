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
withDockerRegistry(credentialsId: '0de1a274-99f7-4f12-b5e7-06513aa65576', url: 'http://localhost:5000') {        echo "Hello"
    }
            }
        }

        
    }

}
