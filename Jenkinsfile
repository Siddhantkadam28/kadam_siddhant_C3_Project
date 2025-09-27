pipeline {
    agent any

 pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
                sh "pwd"
                sh "ls -lrt"
            }
        }

        stage('Connection to Web Server') {
            steps {
                withCredentials([sshUserPrivateKey(credentialsId: 'application', keyFileVariable: 'SSH_KEY')]) {
                    sh '''
                        echo "Connecting to web server..."
                        ssh -i $SSH_KEY -o StrictHostKeyChecking=no ec2-user@54.198.63.12 "sudo yum install ngnix"
                        
                        echo "Copying index.html..."
                        scp -i $SSH_KEY -o StrictHostKeyChecking=no index.html ec2-user@54.198.63.12:/usr/share/nginx/html/

                        ssh -i $SSH_KEY -o StrictHostKeyChecking=no ec2-user@54.198.63.12 "sudo systemctl restart nginx.service"
                    '''
                }
            }
        }
    }
}

}
