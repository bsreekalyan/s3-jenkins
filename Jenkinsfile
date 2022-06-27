pipeline {
    agent any
    parameters {
        booleanParam(name: 'RELOAD_JOB', defaultValue: false, description: 'Reload job from Jenkinsfile and exit')
        choice(name: 'PROJECT', choices: ['azure-data-warehouse', 'google'], description: 'Select the desired engine for release')
        string(name: 'Environments', description: 'Enter the name of engines that need to be deployed with a comma seperator')
        string(name: 'VERSION', defaultValue: '', description: 'Version number for the new release')
        string(name: 'RC_VERSION', defaultValue: '', description: 'Release candidate version from where to create the new version')
        }
    stages {
        stage('Just to Test'){
            steps{
                sh """ #!/usr/bin/env bash
                set -eu
                env=$Environments
                export number_of_environments=`echo $env | tr -cd , | wc -c`
                let number_of_environments+=1
                for i in \$(seq 1 $number_of_environments)
                do
                echo $env | cut -d "," -f $i
                done
                """
            }
        }
    }
}
