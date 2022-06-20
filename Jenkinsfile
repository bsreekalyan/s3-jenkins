pipeline {
    agent any
    parameters {
        booleanParam(name: 'RELOAD_JOB', defaultValue: false, description: 'Reload job from Jenkinsfile and exit')
        choice(name: 'PROJECT', choices: ['azure-data-warehouse', 'google'], description: 'Select the desired engine for release')
        string(name: 'VERSION', defaultValue: '', description: 'Version number for the new release')
        string(name: 'RC_VERSION', defaultValue: '', description: 'Release candidate version from where to create the new version')
    }

    stages {
        stage('Reload pipeline from Jenkinsfile') {
            when {
                expression { params.RELOAD_JOB == true }
            }
            steps {
                echo("Ended pipeline after reloading")
            }
        }
        stage('Copy RC to its version directory'){
            steps {
                sh '''#!/usr/bin/env bash
                        set -eu                     
                            aws s3 cp --recursive "s3://sreekalyan-enterprise/release/${PROJECT}/${VERSION}-${RC_VERSION}" "s3://sreekalyan-enterprise/release/${PROJECT}/${VERSION}"                                             
                    '''
            }
        }
    }
}
