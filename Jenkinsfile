#!groovy

pipeline {
    agent any
    stages {
        stage('Clean Workspace') {
            steps {
                deleteDir()
                echo 'Cleanup done'
            }
        }  
        stage('Initialization') {
        	steps {
        	    checkout scm
        	}
        }
        stage('Run the Script') {
            steps {
                script {
                            sh '/opt/softwares/packer build -var aws_access_key=AKIAJK6DYNLTATHXLPWQ -var aws_secret_key=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 /var/lib/jenkins/workspace/AMI_Creation_With_PACKER/instance.json'
                }
            }
        }

	}
}
