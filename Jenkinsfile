pipeline {
  agent any

  stages {

    stage('Checkout') {
      steps {
        git branch: 'main' url: 'https://github.com/alison-melo/proj-jenkins_lab.git'
      }
    }

    stage('Build') {
      steps {
        sh 'docker build -t static-web:${BUILD_NUMBER} .'
      }
    }

    stage('Stop Old') {
      steps {
        sh 'docker rm -f static-web || true'
      }
    }

    stage('Deploy') {
      steps {
        sh 'docker run -d -p 8081:80 --name static-web static-web:${BUILD_NUMBER}'
      }
    }

    stage('Test') {
      steps {
        sh 'sleep 5'
        sh 'curl -f http://localhost:8081'
      }
    }
  }
}
