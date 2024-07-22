sudo dnf update
sudo dnf install epel-release
sudo dnf install gcc make perl kernel-devel kernel-headers bzip2 dkms elfutils-libelf-devel
sudo dnf update kernel-*
sudo reboot
sudo dnf install epel-release
sudo dnf install https://rpms.remirepo.net/enterprise/remi-release-9.rpm
sudo dnf groupinstall 'System Tools'
sudo dnf update httpd
sudo dnf install htop
sudo dnf install http
sudo dnf install httpd
sudo reboot
sudo sed -i 's/^#\(LoadModule \(proxy\|lbmethod\)_module /\1/' /etc/httpd/conf.modules.d/00-proxy.conf
sudo systemctl restart httpd
sudo httpd -M | grep proxy
sudo sed -i 's/^#\(LoadModule proxy_module\)/\1/' /etc/httpd/conf.modules.d/00-proxy.conf
sudo sed -i 's/^#\(LoadModule lbmethod_.*_module\)/\1/' /etc/httpd/conf.modules.d/00-proxy.conf
sudo sed -i 's/^#\(LoadModule proxy_http_module\)/\1/' /etc/httpd/conf.modules.d/00-proxy.conf
sudo systemctl restart httpd
sudo httpd -M | grep proxy
sudo nano /etc/httpd/conf.d/myapp.conf
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --zone=public --add-port=3000/tcp --permanent
sudo firewall-cmd --reload
sudo setsebool -P httpd_can_network_connect 1
sudo systemctl restart httpd
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --zone=public --add-port=3000/tcp --permanent
sudo firewall-cmd --reload
sudo setsebool -P httpd_can_network_connect 1
sudo systemctl restart httpd
sudo systemctl stop firewalld
sudo tail -f /var/log/httpd/error_log
sudo dnf update -y
sudo dnf install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
curl -fsSL https://fnm.vercel.app/install | bash
source ~/.bashrc
fnm install 20
fnm use 20
node -v
npm -v
mkdir myapp
cd myapp
npm init -y
npm install express
node app.js
sudo nano /etc/httpd/conf/httpd.conf
sudo systemctl restart httpd
sudo nano /etc/httpd/conf.d/myapp.conf
sudo systemctl restart httpd
curl http://localhost:3000
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --zone=public --add-port=3000/tcp --permanent
sudo firewall-cmd --reload
sudo firewall-cmd --list-all
ip a
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --zone=public --add-port=3000/tcp --permanent
sudo firewall-cmd --reload
sudo systemctl restart httpd
sudo firewall-cmd --list-all
sudo lsof -i :3000
curl http://localhost
ip a
sudo dnf update
sudo dnf install -y mongodb-org
sudo rpm --import https://www.mongodb.org/static/pgp/server-6.0.asc
sudo nano /etc/yum.repos.d/mongodb-org-6.0.repo
sudo dnf update -y
sudo dnf install -y mongodb-org
sudo rpm --import https://www.mongodb.org/static/pgp/server-4.4.asc
sudo tee /etc/yum.repos.d/mongodb-org-4.4.repo << EOF
[mongodb-org-4.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/8/mongodb-org/4.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.4.asc
EOF

sudo dnf update
sudo dnf install -y mongodb-org
mongod --version
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod
mongo
cd myapp
node app.js
npm install mongodb
node app.js
cd myapp
node app.js
git clone https://github.com/CrisjoSsj/AplicacionDockerizada
git checkout -b Owner AplicacionDockerizada
git checkout -b
git checkout -b branchtest
git clone https://github.com/CrisjoSsj/AplicacionDockerizada
git checkout -b branchtest
