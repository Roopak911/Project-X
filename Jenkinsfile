pipeline {
    agent {label 'slave-1'}

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
                '''
            }    
        }
    }
}
