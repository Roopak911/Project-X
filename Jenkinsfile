pipeline {
    agent any

    stages {
        stage('Git-checkout') {
            steps {
                sh 'sudo yum install git -y'
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/Roopak911/Project-X.git']])
            }
        }
        stage('run terraform') {
            steps {
                sh '''
                sudo cd /home/ec2-user/myproject
                terraform plan
                terraform apply
                '''
            }
        }
    }
}
