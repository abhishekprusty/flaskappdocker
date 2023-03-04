/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    stages {
        stage('static_check') {
            steps {
                sh 'cat Dockerfile'
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
            }
        }
    }
}
