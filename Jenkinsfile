pipeline {
    agent any

    stages {

        stage('docker-built') {
            steps {
                bat 'docker --version'
            }
        }

        stage('docker-image-built') {
            steps {
                bat 'docker build -t swi:v1 .'
            }
        }

        stage('docker-container-local') {
            steps {
                bat 'docker run -d --name swi-container -p 8081:80 swi:v1'
            }
        }

        stage('docker-image-container-verification') {
            steps {
                bat 'docker ps'
                bat 'docker images'
            }
        }
    }
}