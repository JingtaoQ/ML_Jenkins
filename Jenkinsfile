pipeline {
    agent any
    
    environment {
        DOCKERHUB_CREDENTIALS = credentials('project0117')
    }

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
              sh 'docker build -t project0117/jenkins:latest .'
            }
        }
        stage('Login'){
            steps{
                sh 'echo $DOCKERHUB_CRENTIALS_PSW | docker login -u $ DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        
        stage('Pushing'){
            steps{
                sh 'docker push project0117/jenkins:latest'
            }
        }
    }
  post{
      always{
         sh 'docker logout'
      }
  }
}
