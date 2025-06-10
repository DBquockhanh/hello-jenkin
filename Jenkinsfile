pipeline {
        agent { dockerfile true }

    

stages {
        stage('Clone stage') {
            steps {
withDockerRegistry(credentialsId: '60d677c4-24b2-4d3e-aaf8-4887834e9ee3', url: 'http://localhost:5000') {
                    sh label: '',script: 'docker build -t test:latest .'
                    sh label: '',script: 'docker image push test:latest'
    // some block
}
            }
        }

    }
}