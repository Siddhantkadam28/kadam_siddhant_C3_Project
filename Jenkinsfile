pipeline {
    agent { label 'slave'}
    stages {
        stage {
            sh "sudo yum install ngnix"
            
        }
        stage('Checkout Code') {
            steps {
                checkout scm
                sh "pwd"
                sh "ls -lrt"
                sh "hostname -i"
            }
        }

        // stage('Connection to Web Server') {
        //     steps {
        //         withCredentials([sshUserPrivateKey(credentialsId: 'application', keyFileVariable: 'SSH_KEY')]) {
        //             sh '''
        //                 echo "Connecting to web server..."
        //                 ssh -i $SSH_KEY -o StrictHostKeyChecking=no ec2-user@54.198.63.12 "sudo yum install nginx -y"
                        
        //                 ssh -i $SSH_KEY -o StrictHostKeyChecking=no ec2-user@54.198.63.12 "sudo systemctl restart nginx.service"
        //             '''
        //         }
            }
        }
    }
}

