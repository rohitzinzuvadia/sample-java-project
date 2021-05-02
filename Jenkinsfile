pipeline{
    agent any
    stages{
        stage("Build Source Code"){
            steps{
                sh 'mvn -DskipTests clean package'
            }
        }
        stage("Test"){
            steps{
                sh 'mvn test'
            }
        }
        stage("Build Docker Image"){
            steps{
                sh 'docker build -t rohit34zinzuvadia/sample-java-app:1.0 .'
            }
        }
        stage("Push Docker Image"){
            steps{
                withCredentials([string(credentialsId: 'docker-pwd', variable: 'dockerHubPwd')]) {
                    sh "docker login -u rohit34zinzuvadia -p ${dockerHubPwd}"
                }
                sh 'docker push rohit34zinzuvadia/sample-java-app:1.0'
            }
        }
    }
}