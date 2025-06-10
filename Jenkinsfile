pipeline {
    agent any

    
  tools {nodejs "24.2.0"}

stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') { 
            steps {
                sh 'chmod +x ./jenkins/scripts/test.sh'
                sh './jenkins/scripts/test.sh' 
            }
        }
    }
}