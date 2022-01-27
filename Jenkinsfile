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
                sh "bash sftp.sh ${File_Name} ${USERNAME} ${keyfile}"
              }
            }
        }
    }
  }
}
