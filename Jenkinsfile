pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git credentialsId: 'Siddhantkadam28', url: 'https://github.com/Siddhantkadam28/kadam_siddhant_C3_Project.git'
            }
          stages('checkout code'){
              steps{
              checkout scm
              sh "pwd"
              sh"ls -lrt"
              }
          }
       
