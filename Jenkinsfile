pipeline {
    
agent any

stages {
  stage('Checkout') {
    steps {
      checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Revajack/Devops_new.git']])

    }
  }

    stage('Build Docker Image and Push to Docker Hub and Create container') {
    steps {
      sh './docker.sh'

    }
  }
}


}
