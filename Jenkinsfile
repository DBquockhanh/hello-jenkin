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
                script{
                        docker.withRegistry('https://4330-2001-ee0-4f95-67a0-79f6-e3e2-154d-eed3.ngrok-free.app','a3be03d1-4ed4-427c-a31c-12f6f69ddd30') { 
                                def customImage = docker.build("my-image:latest")
                                customImage.push()
                        }
                }

            }
        }

        
    }

}
