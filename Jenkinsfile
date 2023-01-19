pipeline{
    agent any
    tools{
       maven 'maven_3_8_7'
    }
     stages{
        stages('Build Maven'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '1234', url: 'https://github.com/JingtaoQ/ML_Jenkins']])
                sh 'mvn clean install'
        }
    }
}
