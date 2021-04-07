pipeline {
  agent any
  parameters {
    string name: 'JIRA_URL'
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
          withCredentials(bindings: [usernamePassword(credentialsId: 'jira-jenkins', passwordVariable: 'JIRA_PASS', usernameVariable: 'JIRA_USER')]) {
            sh """
            env
            #bash ./jira_client.sh "$JIRA_URL" "$JIRA_USER" "$JIRA_PASS" "(/) Jenkins 构建流水线 [$JOB_NAME $BUILD_DISPLAY_NAME #$STAGE_NAME |$(echo $BUILD_URL | sed 's#job#blue/organizations/jenkins#' | sed 's#job#detail#')] [{color:#00875a}*成功*{color}] 构建镜像 tool-man:demo-${BRANCH_NAME}"
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
