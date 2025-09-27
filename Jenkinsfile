pipeline {
    agent any

    stages {
          stage('checkout code'){
              steps{
              checkout scm
              sh "pwd"
              sh"ls -lrt"
              }
          }
        stage ('connection to web-server'){
            steps{ 
                 // Use Jenkins credentials
                    withCredentials([sshUserPrivateKey(credentialsId: 'application', keyFileVariable: 'SSH_KEY')]) {
                        sh '''
                          ssh -i $SSH_KEY -o StrictHostKeyChecking=no ec2-user@54.198.63.12 "hostname -i"
                          scp -i $SSH_KEY -o StrictHostKeyChecking=no index.html ec2-user@54.198.63.12:/usr/share/ngnix/html

                        '''
                
            }
        }
    }
}
}
