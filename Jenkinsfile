pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/pongpat2520/webtest3.git'
            }
        }
        stage('Build') {
            steps {
                bat 'No build needed for static site'
            }
        }
        stage('Deploy') {
            steps {
                script {
                    // Ensure the destination directory exists
                    sh 'mkdir -p /tmp/html'
                    // Copy the index.html file to the destination
                    sh 'cp index.html /tmp/html/'
                }
            }
        }
    }
}
