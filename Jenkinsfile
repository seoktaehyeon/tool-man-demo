pipeline {
  agent any
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
        def comment = [ body: "(/) Jenkins 构建流水线 [$JOB_NAME $BUILD_DISPLAY_NAME #1|$BUILD_URL] [{color:#00875a}*成功*{color}] 构建镜像 tool-man:demo-${BRANCH_NAME}" ]
        jiraAddComment idOrKey: 'DEMODEV-15', input: comment
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
