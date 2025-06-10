pipeline {
    agent any

    

stages {
        stage('Clone stage') {
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