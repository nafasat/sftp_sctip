def my_sftp_server = "34.131.90.226"
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
                sh "bash sftp.sh ${File_Name} ${USERNAME} ${keyfile} ${my_sftp_server}"
              }
            }
        }
    }
  }
}
