/* Requires the Docker Pipeline plugin */
pipeline {
    script {
        env.dev_version = "NOT DEFINED DEV"
        env.qa_version  = "NOT DEFINED QA"
        env.pp_version  = "NOT DEFINED PP"
        env.prd_version = "NOT DEFINED PRD"
    }
    agent any
    stages {
        stage('Overwrite_env_vars') {
            env.dev_version = "Hello"
            env.qa_version  = "World"
            env.pp_version  = "My name is"
            env.prd_version = "John"
        }
        stage('Test_env_vars_accessibility') {
            echo "NEXT JOB DEV version = ${env.dev_version}"
            echo "NEXT JOB QA version = ${env.qa_version}"
            echo "NEXT JOB PP version = ${env.pp_version}"
            echo "NEXT JOB PRD version = ${env.prd_version}"
        }
        stage('static_check') {
            environment {
        SECRET_FILE_ID = credentials('secretfile22')
      }
            steps {
                sh 'cat Dockerfile'
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
