pipeline {
    agent any
    parameters {
        booleanParam(name: 'RELOAD_JOB', defaultValue: false, description: 'Reload job from Jenkinsfile and exit')
        choice(name: 'PROJECT', choices: ['azure-data-warehouse', 'google'], description: 'Select the desired engine for release')
        string(name: 'VERSION', defaultValue: '', description: 'Version number for the new release')
        string(name: 'RC_VERSION', defaultValue: '', description: 'Release candidate version from where to create the new version')
    }
    stages {
        stage('Just to Test'){
            steps{
                sh '''#!/usr/bin/env bash
                set -eu
                echo "The testing is successfull"
                }
        }

    }
}

    