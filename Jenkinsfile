pipeline {
  agent any
//   environment {
//     INT_REPO='gitlab.jing-yi.com.cn'
//     INT_HARBOR='harbor.jing-yi.com.cn'
//   }
//   parameters {
//     string name: 'GIT_PROJECT', trim: true
//     string name: 'GIT_BRANCH', trim: true, defaultValue: 'master'
//     string name: 'MY_CRED', trim: true, defaultValue: 'gitlab-devops'
//   }
  stages {
    stage('Build Image') {
      steps {
        sh """
        echo "Start to build Docker image"
        sleep 2
        echo "Complete to build"
        """
      }
    }
    stage('Setup Test Env') {
      steps {
        sh """
        echo "Start to deploy env"
        sleep 2
        echo "Complete to deploy"
        """
      }
    }
    stage('Integration Test') {
      steps {
        sh """
        echo "Start to test"
        sleep 2
        echo "Complete to test"
        """
      }
    }
    jiraComment {
      issueKey: 'DEMODEV-15',
      body: 'Hello'
    }
  }
}
