pipeline {
    agent any
    parameters {
            activeChoiceParam('choice1') {
                        description('select your choice')
                        choiceType('RADIO')
                        groovyScript {
                            script('return["aaa","bbb"]')
                            fallbackScript('return ["error"]')
                        }
            }
            activeChoiceReactiveParam('choice2') {
                        description('select your choice')
                        choiceType('RADIO')
                        groovyScript {
                            script(' if(choice1.equals("aaa")) { return ["a", "b"] } else {return ["aaaaaa","fffffff"] } ')
                            fallbackScript('return ["error"]')
                        }
                        referencedParameter('choice1')
            }

        }
    stages {
        stage('Just to Test'){
            steps{
                sh """ #!/usr/bin/env bash
                set -eu
                echo "The testing is successfull to print $VERSION and $RC_VERSION"
                echo "These are selected"
                """
                }
        }
    }
}

    