def my_sftp_server = "34.131.90.226"
def binary_code_dir = "target/"
properties([parameters([string(description: 'input Binary_file Name', name: 'Binary_File_Name')])])
pipeline {
  agent {
    node { label 'quay-vm' }
  }
  stages {
    stage('check_sftp') 
    {
      steps
      {
          script {
              withCredentials([sshUserPrivateKey(credentialsId:'sftp-key', keyFileVariable: 'keyfile',usernameVariable: 'USERNAME')])
              { 
              //  # sh "bash sftp.sh ${Binary_File_Name} ${USERNAME} ${keyfile} ${my_sftp_server}" //
                sh "echo get ${binary_code_dir}/${Binary_File_Name} | sftp -oStrictHostKeyChecking=no -i ${keyfile} ${USERNAME}@${my_sftp_server}"
                
              }
            }
        }
    }
  }
}
