pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/pongpat2520/webtest3.git'
    }

    stages {
        stage('Clone') {
            steps {
                git url: "${GIT_REPO}", branch: 'main'
            }
        }

        stage('Build') {
            steps {
                echo "No build step for static site"
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
