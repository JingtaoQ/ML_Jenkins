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
              sh 'docker build -t jingtaoqu/project0117:latest .'
            }
        }
    }
  triggers{
       githubPush()
  }
}
