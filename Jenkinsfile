pipeline {
    agent any

    stages {
        stage('Building') {
            steps {
              sh 'pip3 install -r requirements.txt'
            }
        }
        stage('Testing') {
            steps {
              sh 'python3 test_main.py '
            }
        }
        stage('Deploying'){
            steps {
              sh 'docker image build -t project0117/jenkins:latest .'
              sh 'docker run -p 8081:8080 project0117/jenkins'
            }
        }
    }
  triggers{
       githubPush()
  }
}
