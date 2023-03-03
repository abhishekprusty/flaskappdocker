/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    stages {
        stage('dummy') {
            steps {
                sh 'echo My name is John!'
            }
        }
        stage('build') {
            steps {
                sh 'docker build .'
            }
        }
        stage('test') {
            steps {
                sh 'docker images'
                sh 'echo My name is John!'
            }
        }
    }
}
