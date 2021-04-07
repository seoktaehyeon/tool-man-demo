pipeline {
  agent any
  parameters {
    string name: 'JIRA_URL'
  }
  stages {
    stage('Build Image') {
      steps {
        withCredentials(bindings: [usernamePassword(credentialsId: 'jira-jenkins', passwordVariable: 'JIRA_PASS', usernameVariable: 'JIRA_USER')]) {
          sh """
          bash ./jira_client.sh "$JIRA_URL" "$JIRA_USER" "$JIRA_PASS" "(i) {color:#ff8b00}*Jenkins*{color} 构建流水线 [$JOB_NAME $BUILD_DISPLAY_NAME #$STAGE_NAME |$BUILD_URL] [{color:#4c9aff}*进行中*{color}] 开始构建"
          """
        }
        sh """
        echo "Start to build Docker image"
        sleep 2
        echo "Complete to build"
        """
      }
      post {
        success {
          withCredentials(bindings: [usernamePassword(credentialsId: 'jira-jenkins', passwordVariable: 'JIRA_PASS', usernameVariable: 'JIRA_USER')]) {
            sh """
            bash ./jira_client.sh "$JIRA_URL" "$JIRA_USER" "$JIRA_PASS" "(/) {color:#ff8b00}*Jenkins*{color} 构建流水线 [$JOB_NAME $BUILD_DISPLAY_NAME #$STAGE_NAME |$BUILD_URL] [{color:#00875a}*成功*{color}] 构建镜像 tool-man:demo-${BRANCH_NAME}"
            """
          }
        }
      }
    }
    stage('Deploy Test Env') {
      steps {
        withCredentials(bindings: [usernamePassword(credentialsId: 'jira-jenkins', passwordVariable: 'JIRA_PASS', usernameVariable: 'JIRA_USER')]) {
          sh """
          bash ./jira_client.sh "$JIRA_URL" "$JIRA_USER" "$JIRA_PASS" "(i) {color:#ff8b00}*Jenkins*{color} 部署流水线 [$JOB_NAME $BUILD_DISPLAY_NAME #$STAGE_NAME |$BUILD_URL] [{color:#4c9aff}*进行中*{color}] 开始部署"
          """
        }
        sh """
        echo "Start to deploy env"
        sleep 2
        echo "Complete to deploy"
        """
      }
      post {
        success {
          withCredentials(bindings: [usernamePassword(credentialsId: 'jira-jenkins', passwordVariable: 'JIRA_PASS', usernameVariable: 'JIRA_USER')]) {
            sh """
            bash ./jira_client.sh "$JIRA_URL" "$JIRA_USER" "$JIRA_PASS" "(/) {color:#ff8b00}*Jenkins*{color} 部署流水线 [$JOB_NAME $BUILD_DISPLAY_NAME #$STAGE_NAME |$BUILD_URL] [{color:#00875a}*成功*{color}] 部署测试环境"
            """
          }
        }
      }
    }
    stage('Integration Test') {
      steps {
        withCredentials(bindings: [usernamePassword(credentialsId: 'jira-jenkins', passwordVariable: 'JIRA_PASS', usernameVariable: 'JIRA_USER')]) {
          sh """
          bash ./jira_client.sh "$JIRA_URL" "$JIRA_USER" "$JIRA_PASS" "(i) {color:#ff8b00}*Jenkins*{color} 测试流水线 [$JOB_NAME $BUILD_DISPLAY_NAME #$STAGE_NAME |$BUILD_URL] [{color:#4c9aff}*进行中*{color}] 开始测试"
          """
        }
        sh """
        echo "Start to test"
        sleep 2
        echo "Complete to test"
        """
      }
      post {
        success {
          withCredentials(bindings: [usernamePassword(credentialsId: 'jira-jenkins', passwordVariable: 'JIRA_PASS', usernameVariable: 'JIRA_USER')]) {
            sh """
            bash ./jira_client.sh "$JIRA_URL" "$JIRA_USER" "$JIRA_PASS" "(/) {color:#ff8b00}*Jenkins*{color} 测试流水线 [$JOB_NAME $BUILD_DISPLAY_NAME #$STAGE_NAME |$BUILD_URL] [{color:#00875a}*成功*{color}] 测试完成"
            """
          }
        }
      }
    }
  }
}
