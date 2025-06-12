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
docker.withRegistry('http://localhost:5000','a3be03d1-4ed4-427c-a31c-12f6f69ddd30') { 
def customImage = docker.build("my-image:latest")

        /* Push the container to the custom Registry */
        customImage.push()
//      echo "Hello"
    }
            }
        }

        
    }

}
