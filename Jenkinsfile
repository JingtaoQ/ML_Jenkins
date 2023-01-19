pipeline {
    agent {
       docker {
       image 'maven:3.8.7-eclipse-temurin-11'
       args '-v $HOME/.m2:/root/.m2'
       }
    }

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
              sh 'docker image build -t jenkins .'
              sh 'docker run -d -p 5000:5000 jenkins'
            }
        }
    }
  triggers{
       githubPush()
  }
}
