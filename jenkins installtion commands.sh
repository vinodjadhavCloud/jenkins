sudo yum update -y
sudo yum install -y git aws-cli
sudo yum install java-17-amazon-corretto-devel -y
sudo alternatives --config java
sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
mvn --version
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo amazon-linux-extras install epel -y # if you are using Amazon Linux 3 or higher then this command is not required.
sudo yum install daemonize -y
sudo yum install -y jenkins
sudo service jenkins start
sudo systemctl enable jenkins
sudo touch vinod