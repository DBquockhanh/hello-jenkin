pipeline {
        agent { dockerfile true }

    

stages {
        stage('Clone stage') {
            agent {
        docker { image 'node:22.16.0-alpine3.22' }
    }
            steps {
withDockerRegistry(url: 'http://localhost:5000') {
                    sh label: '',script: 'docker build -t test:latest .'
                    sh label: '',script: 'docker image push test:latest'
    // some block
}
            }
        }

    }
}