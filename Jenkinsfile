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
              sh 'python3 -m unittest'
            }
        }
        stage('Deploying'){
            steps {
              sh 'docker build -t jenkins .'
              sh 'docker run -d -p 5000:5000 jenkins'
            }
        }
    }
  triggers{
       githubPush()
  }
}
