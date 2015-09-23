#!/bin/sh

## WifiSniffer Configuration ##
INSTANCE=smart_device_server

INSTALL_DIR=/opt/python/$INSTANCE
PID_DIR=/var/run
LOG_DIR=/var/log/$INSTANCE

DATABSE_HOST=localhost
DATABSE_NAME=smart_device_server
DATABSE_USER=root
DATABSE_PASSWORD=1234567

## End Of Configuration ##

echo "================================================================================"
base=$(cd `dirname $0` && pwd)

# batch nginx/uwsgi
NGINX_PORT=80

UWSGI_PROC=/usr/local/bin/uwsgi
UWSGI_HOME=$base
UWSGI_SOCK=/tmp/$INSTANCE.sock
UWSGI_PID=$PID_DIR/$INSTANCE.pid
UWSGI_MODULE=django_wsgi
UWSGI_CONFIG=$INSTANCE.ini
UWSGI_LOG=$LOG_DIR/$INSTANCE-uwsgi.log


# Install developing modules
echo -e "[\033[32m Install Developing Modules \033[0m]"
#pip install -r requirements.pip

# Install the necessary folders/files.
echo -e "[\033[32m Create Necessary Folders \033[0m]"
mkdir -p $INSTALL_DIR > /dev/null 2>&1

mkdir -p $LOG_DIR > /dev/null 2>&1

# Install the necessary folders/files.
echo -e "[\033[32m Install Project Files \033[0m]"
cp -a -f *.py $INSTALL_DIR/
cp -a -f config $INSTALL_DIR/
cp -a -f console $INSTALL_DIR/
cp -a -f server $INSTALL_DIR/
cp -a -f static $INSTALL_DIR/
cp -a -f templates $INSTALL_DIR/
cp -a -f smart_device $INSTALL_DIR/


# Generate uwsgi service configuration and script
echo -e "[\033[32m Generate uwsgi Configuration \033[0m]"
sed "s,##INSTALL_DIR##,$INSTALL_DIR,g" $base/service/$UWSGI_CONFIG | \
sed "s,##UWSGI_SOCK##,$UWSGI_SOCK,g" | \
sed "s,##UWSGI_PID##,$UWSGI_PID,g" | \
sed "s,##UWSGI_MODULE##,$UWSGI_MODULE,g" | \
sed "s,##UWSGI_LOG##,$UWSGI_LOG,g" > /etc/$UWSGI_CONFIG

sed "s,##INSTALL_DIR##,$INSTALL_DIR,g" $base/service/uwsgi-template | \
sed "s,##INSTANCE##,$INSTANCE,g" | \
sed "s,##UWSGI_PROC##,$UWSGI_PROC,g" | \
sed "s,##UWSGI_PID##,$UWSGI_PID,g" | \
sed "s,##UWSGI_CONFIG##,$UWSGI_CONFIG,g" > /etc/init.d/$INSTANCE

# Generate nginx configuration
echo -e "[\033[32m Generate nginx Configuration \033[0m]"
sed "s,##NGINX_PORT##,$NGINX_PORT,g" $base/service/nginx-$INSTANCE.conf | \
sed "s,##UWSGI_SOCK##,$UWSGI_SOCK,g" | \
sed "s,##INSTALL_DIR##,$INSTALL_DIR,g" > /etc/nginx/conf.d/nginx-$INSTANCE.conf

cp $base/service/gzip.conf /etc/nginx/conf.d/

# Display system settings
echo "================================================================================"
echo -e "  System User:    [\033[33m root \033[0m]"
echo -e "  Project Folder: [\033[33m $INSTALL_DIR/ \033[0m]"
echo -e "  Log Folder:     [\033[33m $LOG_DIR/ \033[0m]"
echo -e "  Pid File:       [\033[33m $UWSGI_PID \033[0m]"
echo -e "  uwsgi Config:   [\033[33m /etc/$UWSGI_CONFIG \033[0m]"
echo -e "  uwsgi Proc:     [\033[33m $UWSGI_PROC \033[0m]"
echo -e "  uwsgi Sock:     [\033[33m $UWSGI_SOCK \033[0m]"
echo -e "  Daemon Name:    [\033[33m /etc/init.d/$INSTANCE \033[0m]"
echo "================================================================================"
echo ""