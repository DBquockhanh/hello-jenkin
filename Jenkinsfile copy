pipeline {
    agent any

    
  tools {nodejs "24.2.0"}

stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Deliver') { 
            steps {
                sh 'chmod +x ./jenkins/scripts/deliver.sh'
                sh 'chmod +x ./jenkins/scripts/kill.sh'
                sh './jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/kill.sh'
            }
        }
    }
}