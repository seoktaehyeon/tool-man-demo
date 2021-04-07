pipeline {
  agent any
  parameters {
    password name: 'JIRA_URL'
  }
  stages {
    stage('Build Image') {
      steps {
        sh """
        echo "Start to build Docker image"
        sleep 2
        echo "Complete to build"
        """
      }
      post {
        always {
          withCredentials([usernamePassword(credentialsId: 'jira-jenkins', passwordVariable: 'JIRA_PASS', usernameVariable: 'JIRA_USER')]) {
            sh """
            comment="(/) Jenkins 构建流水线 [$JOB_NAME $BUILD_DISPLAY_NAME #1|$BUILD_URL] [{color:#00875a}*成功*{color}] 构建镜像 tool-man:demo-${BRANCH_NAME}"
            bash jira_client.sh "$JIRA_URL" "$JIRA_USER" "$JIRA_PASS" "$comment"
            """
          }
        }
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
  }
}
