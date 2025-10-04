pipeline {
    agent { label 'slave' }
    stages {
        stage('Install Nginx') {
            steps {
                sh "sudo yum install nginx"
            }
        }
        stage('Checkout Code') {
            steps {
                checkout scm
                sh "pwd"
                sh "ls -lrt"
                sh "hostname -i"
            }
        }
        // stage('Connect to Web Server') {
        //     steps {
        //         withCredentials([sshUserPrivateKey(credentialsId: 'application', keyFileVariable: 'SSH_KEY')]) {
        //             sh '''
        //                 echo "Establishing connection to web server..."
        //                 ssh -i $SSH_KEY -o StrictHostKeyChecking=no ec2-user@54.198.63.12 "sudo yum install nginx -y"
        //                 ssh -i $SSH_KEY -o StrictHostKeyChecking=no ec2-user@54.198.63.12 "sudo systemctl restart nginx.service"
        //             '''
        //         }
        //     }
        // }
    }
}
