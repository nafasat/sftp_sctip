def my_sftp_server = "34.131.87.94"
pipeline {
  agent any
  stages {
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
