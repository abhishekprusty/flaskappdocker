/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    stages {
        stage('static_check') {
            steps {
                sh 'cat Dockerfile'
                SECRET_FILE_ID = credentials('secret-file-id')
                echo $SECRET_FILE_ID
                
            }
        }
        stage('build') {
            steps {
                sh 'docker build -t professorlogan/flaskappdocker .'
            }
        }
        stage('test') {
            steps {
                sh 'docker images'
                sh 'docker run -d professorlogan/flaskappdocker'
                sh 'docker ps -a'
            }
        }
        stage('execute') {
            steps {
                sh 'docker run -d professorlogan/flaskappdocker'
                sh 'docker ps -a'
            }
        }
    }
}
