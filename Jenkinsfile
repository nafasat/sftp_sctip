def my_sftp_server = "34.131.87.94"
pipeline {
  agent any
  stages {
    stage('input_sftp_IP') {
            steps {
                input message: 'Please pass IP', parameters: [string(description: 'Please pass IP', name: 'IP')]
     }
    stage('check_sftp') 
    {
      steps
      {
          script {
              withCredentials([sshUserPrivateKey(credentialsId:'sftp-key', keyFileVariable: 'keyfile',usernameVariable: 'USERNAME')])
              {
                  sh "echo ls > text.txt"
                  sh "sftp -o 'StrictHostKeyChecking no' -i $keyfile -b text.txt ${USERNAME}@${my_sftp_server}"
              }
            }
          //sh '''echo $keyFileVariable'''  
        }
    }
  }
}
