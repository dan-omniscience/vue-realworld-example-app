pipeline {
    agent any

    stages {
        stage('Build') {
          steps {
            npm install
          }
        }
        stage('Test') {
            steps {
               npm run test:unit
            }
        }
        stage('Deploy') {
            steps {
                docker build . -t vue-real-world
            }
        }
    }
}
