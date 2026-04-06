pipeline {
  agent any

  stages {

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
        sh 'docker run -d -p 8081:80 --name static-web --network jenkins_default static-web:${BUILD_NUMBER}'
      }
    }

    stage('Test') {
      steps {
        sh 'sleep 5'
        sh 'curl -f http://static-web:80'
      }
    }
  }
}
