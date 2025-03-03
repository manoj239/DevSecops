apt update && apt install -y unzip jq net-tools tree

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

To get what type of OS we are using , give this -->  [unanme -a]
But above above command doesn't give release , so instead give   --> cat /etc/lsb-release

Following tools must be Installed on Ubuntu system

1.Unzip

2.JQ

3.AWS CLI

4.AZ CLI

5.net-tools

6.tree


GLobal Env VariableS:
echo $HOME
echo $USER
echo $PWD

User Env VariableS:
export AWS_ACCESS_KEY_ID=AKIAWOAVSQWUGDWX5DPS
export AWS_SECRET_ACCESS_KEY=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