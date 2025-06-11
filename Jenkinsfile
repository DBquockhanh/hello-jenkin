pipeline {
        agent { dockerfile true }

    

stages {
        stage('Clone stage') {
            agent {
        docker { image 'node:22.16.0-alpine3.22' }
    }
            steps {
withDockerRegistry(credentialsId: '305d6b1d-8b3a-4cd7-a005-2498ea63b75d', url: 'http://localhost:5000') {
    // some block

                    sh label: '',script: 'docker build -t test:latest .'
                    sh label: '',script: 'docker image push test:latest'
    // some block
}
            }
        }

    }
}