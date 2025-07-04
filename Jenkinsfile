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
                sh mkdir -p /tmp/html cp index.html /tmp/html
            }
        }
    }
}
