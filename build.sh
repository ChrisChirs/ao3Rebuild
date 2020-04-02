#    <one line to give the program's name and a brief idea of what it does.>
#    Copyright (C) <year>  <name of author>
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.
#begin
echo "nginx will start to install after 3 second"
sleep 3s
apt-get update
apt-get install build-essential
apt-get install libtool
apt-get install libpcre3 libpcre3-dev
apt-get install zlib1g-dev
apt-get install openssl
apt-get install libssl-dev
ln -s /usr/lib/x86_64-linux-gnu/libssl.a /usr/lib/libssl.a
ln -s /usr/lib/x86_64-linux-gnu/libcrypto.a /usr/lib/libcrypto.a
cd /home/chris
if [ ! -d "./nginx-1.16.1" ];then
    if [ ! -f "./nginx-1.16.1.tar.gz" ];then
        wget https://nginx.org/download/nginx-1.16.1.tar.gz
    else
        echo "nginx .tar.gz has already dowload,pass download"
    fi
    tar -xzvf nginx-1.16.1.tar.gz
else
    echo "Dir has already made,pass tar."
fi
cd nginx-1.16.1
#Change the path to openssl.
sed -i "s/\/\.openssl//g" ./auto/lib/openssl/conf
echo "Sed End."
if [ ! -d "./ngx_http_substitutions_filter_module" ];then
    git clone https://github.com/yaoweibin/ngx_http_substitutions_filter_module.git
else
    echo "subs has already download,pass."
fi
./configure --prefix=/usr/local/nginx --with-openssl=/usr --with-http_ssl_module --add-module=./ngx_http_substitutions_filter_module --with-http_v2_module && make && make install
ln -s /usr/local/nginx/sbin/nginx /usr/bin/nginx
echo "nginx install finished."
#end