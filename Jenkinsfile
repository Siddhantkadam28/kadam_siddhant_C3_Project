pipeline {
    agent { label 'slave' }
    stages {
        stage('Test') {
            steps {
                sh "sudo yum install git -y"
                sh "sudo yum install python3 -y"
                sh "sudo yum install python3 python3-pip -y"
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
        stage('Move files and run Python script') {
            steps {
                sh 'sudo cp /home/ec2-user/jenkin/workspace/test/test/sid.py /opt/python/'
                sh 'sudo cp /home/ec2-user/jenkin/workspace/test/test/requirements.txt /opt/python/'
                sh 'cd /opt/python && sudo pip install -r requirements.txt'
                sh 'nohup python3 /opt/python/sid.py &'
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
