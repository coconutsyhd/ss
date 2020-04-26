
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
cd /etc/yum.repos.d/
curl -O https://copr.fedorainfracloud.org/coprs/librehat/shadowsocks/repo/epel-7/librehat-shadowsocks-epel-7.repo
yum install -y shadowsocks-libev
yum install -y vim
firewall-cmd --permanent --add-port=10147/tcp
firewall-cmd --permanent --add-port=10147/udp
firewall-cmd --reload
systemctl start shadowsocks-libev
