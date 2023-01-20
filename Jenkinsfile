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
                withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                    sh 'echo login -u project0117 -p ${dockerhubpwd}'
                }
                    sh 'docker push jenkins'
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
