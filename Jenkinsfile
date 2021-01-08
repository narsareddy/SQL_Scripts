pipeline {
    agent {
        docker {
            image 'node:14-alpine'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'echo "Build: step 1"'
                sh '''
                    echo "Build: step 2.1"
                    pwd
                    '''
            }
        }
        stage('Test') {
            steps {
                sh 'npm --version'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploy: step 1"'
                sh 'echo "Deploy: step 2"'
            }
        }
    }
}
