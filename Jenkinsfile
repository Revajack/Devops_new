pipeline {
    
agent any

stages {
  stage('Checkout') {
    steps {
      checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Revajack/Devops_new.git']])

    }
  }

   stage('Build Docker Image') {
      steps {
      sh 'docker build -t httpdimg:latest .'

    }
  }
    stage('Push to Docker Hub and Create container') {
    steps {
        withCredentials([usernamePassword(credentialsId: 'Dockerhub_Credentials', passwordVariable: 'Docker_pwd', usernameVariable: 'Docker_un')]) {
      sh 'docker login -u ${Docker_un} -p  ${Docker_pwd}'
}
      sh './docker.sh'

    }
  }
}


}
