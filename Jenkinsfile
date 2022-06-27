pipeline {
    agent any
    parameters {
        booleanParam(name: 'RELOAD_JOB', defaultValue: false, description: 'Reload job from Jenkinsfile and exit')
        string(name: 'Environments', description: 'Enter the name of engines that need to be deployed with a comma seperator')
        string(name: 'VERSION', defaultValue: '', description: 'Version number for the new release')
        string(name: 'RC_VERSION', defaultValue: '', description: 'Release candidate version from where to create the new version')
        }
    stages {
        stage('Copy the Release Candidate to final Directory in aws s3 bucket'){
            steps{
                sh """ #!/usr/bin/env bash
                set -eu
                export env=$Environments
                sh ./sample.sh
                """
            }
        }
    }
}
