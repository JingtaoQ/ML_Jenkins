pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhubpwd')
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
              sh 'docker build -t jingtaoqu/jenkins:latest .'
            }
        }
        stage('Running'){
            steps {
              sh 'docker run -d -p 8003:8080 jingtaoqu/jenkins:latest'
            }
        }	   
        
    }
    
  post{
      always{
         sh 'docker logout'
      }
  }
}
