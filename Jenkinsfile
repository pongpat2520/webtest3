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

        stage('Prepare Deployment') {
            steps {
                sh 'mkdir -p /tmp/html'
                sh 'cp index.html /tmp/html/'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker rm -f my-web || true'
                sh 'docker run -d --name my-web -p 8888:80 -v /tmp/html:/usr/share/nginx/html:ro nginx'
            }
        }
    }
}
