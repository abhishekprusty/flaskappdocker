/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker build .'
            }
        }
        stage('test') {
            steps {
                sh 'echo Hello World'
                sh 'echo My name is John!'
            }
        }
    }
}
