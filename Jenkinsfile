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
withDockerRegistry(credentialsId: 'a3be03d1-4ed4-427c-a31c-12f6f69ddd30', url: 'http://localhost:5000') { 
sh '''
                docker build -t test .
                docker push test:latest
                '''
//      echo "Hello"
    }
            }
        }

        
    }

}
