pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn -version'
                sh 'mvn clean install -Dmaven.version=3.8.7'
            }
        }
    }
}
