pipeline {
    agent any

    stages {
        stage('Git-checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/terraform']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/Roopak911/myproject.git']])
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
