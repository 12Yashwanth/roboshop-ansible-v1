echo "Starting setup script..."
dnf install python3 python3-pip -y >> output.log
if [ $? -ne 0 ]; then
  echo "Python3 installation failed. Check output.log for details."
  exit 1
else
  echo "Python3 installation completed successfully."
fi

pip3 install ansible >> output.log
if [ $? -ne 0 ]; then
  echo "Ansible installation failed. Check output.log for details."
  exit 1
else
  echo "Ansible installation completed successfully."
fi

ansible-galaxy collection install amazon.aws >> output.log
if [ $? -ne 0 ]; then
  echo "Amazon AWS collection installation failed. Check output.log for details."
  exit 1
else
  echo "Amazon AWS collection installation completed successfully."
fi

pip install boto3 botocore >> output.log
if [ $? -ne 0 ]; then
  echo "boto3 and botocore installation failed. Check output.log for details."
  exit 1
else
  echo "boto3 and botocore installation completed successfully."
fi