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
                scripts {
                            sh '/opt/softwares/packer build /var/lib/jenkins/workspace/AMI_Creation_With_PACKER/instance.json'
                }
            }
        }

	}
}
