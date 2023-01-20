pipeline {
    agent any
    
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
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
        stage('Push image to Hub'){
            steps{
                withDockerRegistry([credentialsID:"docker-hub", url:""]){
                    sh 'docker push project0117/jenkins:latest'
                }
            }
        }
    }
  post{
      always{
         sh 'docker logout'
      }
  }
}
