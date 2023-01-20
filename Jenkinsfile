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
                script{
                    withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerhub')]) {
                    sh 'docker login -u project0117 -p ${dockerhub}'

}
                    sh 'docker push project0117/jenkins'
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
