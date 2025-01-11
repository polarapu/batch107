pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "Maven"
    }

    stages {
        stage('SCM-Stage') {
            steps {
                echo 'Cloning Git repo'
                git credentialsId: '3e81946e-ccc4-40f5-8a54-2357e6d4ba9d', url: 'https://github.com/polarapu/maven-project1.git'
            }
        }
        stage('Build-Stage') {
            steps {
                echo 'Maven build'
                sh 'mvn clean install'
            }
        }
        stage('Deploy-Stage') {
            steps {
                echo 'Tomcat Deployment'
                deploy adapters: [tomcat9(credentialsId: '18da8b3f-825b-461f-b9b6-1eceb76d7ceb', path: '', url: 'http://192.168.75.128:8081/')], contextPath: 'devops107.war', war: '**/*.war'
            }
        }
    }
}

