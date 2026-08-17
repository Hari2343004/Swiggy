pipeline {
    agent any

    stages {

        stage('docker-built') {
            steps {
                bat 'docker --version'
            }
        }

        stage('remove old container') {
            steps {
                bat 'docker rm -f swi-container 2>nul || exit /b 0'
            }
        }

        stage('remove old image') {
            steps {
                bat 'docker rmi -f swi:v1 2>nul || exit /b 0'
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