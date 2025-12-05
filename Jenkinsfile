@Library('pipeline-library') _


pipeline {
    agent any
    environment {
        APP_NAME = getOrDefault(pipelineParams.appName, null)
        IMAGE_TAG = getOrDefault(pipelineParams.imageTag, "latest")
    stages {
        stage('Build')
            steps {
                dockerBuild(
                    env.APP_NAME,
                    env.IMAGE_TAG
                )
            }
    }
}
