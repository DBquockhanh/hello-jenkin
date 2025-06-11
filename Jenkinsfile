pipeline {
    agent any

    environment {
        REGISTRY = "localhost:5000"
        IMAGE = "myapp"
        TAG = "latest"
    }

    stages {
        stage('Build') {
            steps {
                bat "docker build -t %REGISTRY%/%IMAGE%:%TAG% ."
            }
        }

        stage('Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: '	305d6b1d-8b3a-4cd7-a005-2498ea63b75d', usernameVariable: 'admin', passwordVariable: 'admin')]) {
                    bat """
                        echo %DOCKER_PASS% | docker login %REGISTRY% --username %DOCKER_USER% --password-stdin
                    """
                }
            }
        }

        stage('Push') {
            steps {
                bat "docker push %REGISTRY%/%IMAGE%:%TAG%"
            }
        }
    }
}
