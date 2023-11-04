pipeline {
    agent any

    stages {
        stage('Git-checkout') {
            steps {
                sh 'sudo yum install git -y'
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/Roopak911/Project-X.git']])
            }
        }
        stage('install terraform') {
            steps {
                sh '''
                sudo yum install -y yum-utils
                sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
                sudo yum -y install terraform
                sudo cd /home/ec2-user/workspace/aws-infra-using-terraform/
                terraform init
                '''
            }    
        } 
        stage('run terraform') {
            steps {
                sh '''
                terraform plan
                terraform apply
                '''
            }    
        }   
    }
}

