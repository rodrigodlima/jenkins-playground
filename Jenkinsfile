@Library('pipeline-library') _


pipeline {
    agent any
    parameters {
        string(name: 'APP_NAME', defaultValue: 'my-app', description: 'Application name')
        string(name: 'IMAGE_TAG', defaultValue: 'latest', description: 'Docker image tag')
    }
    environment {
        APP_NAME = "${params.APP_NAME}"
        IMAGE_TAG = "${params.IMAGE_TAG}"
    }
    stages {
        stage('Build') {
            steps {
                dockerBuild(
                    env.APP_NAME,
                    env.IMAGE_TAG)
            }
        }
    }
}
