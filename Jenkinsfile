pipeline {
    agent any

    stages {
        stage('Building') {
            steps {
              sh 'pip3 install -r requirements.txt'
            }
        }
        stage('Building Docker') {
            steps {
                script{
              sh 'docker build -t test .'
                }
            }
        }
        stage('Deploying'){
            steps {
              sh 'docker image build -t jenkins .'
              sh 'docker run -d -p 5000:5000 jenkins'
            }
        }
    }
  triggers{
       githubPush()
  }
}
