#!/bin/bash
File_Name=$1
Sftp_User=$2
Sftp_Key=$3
Sftp_IP='34.131.90.226'

# echo "get $File_Name" > command.txt
# echo "put command.txt" > command.txt

echo "get $File_Name" | sftp -oStrictHostKeyChecking=no -i $Sftp_Key ${Sftp_User}@${Sftp_IP}

if [ $? -ne 0 ]
then
  rm command.txt
  exit 1
else
  ls $File_Name
fi
