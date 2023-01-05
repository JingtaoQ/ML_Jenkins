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
              sh  'docker run -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):$(which docker)  -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts'
              sh 'docker image build -t jenkins .'
              sh 'docker run -d -p 5000:5000 jenkins'
            }
        }
    }
  triggers{
       githubPush()
  }
}
