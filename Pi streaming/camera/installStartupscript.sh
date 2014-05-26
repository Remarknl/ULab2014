cp ./startStreaming.sh /etc/init.d/
chmod 755 /etc/init.d/startStreaming.sh
update-rc.d startStreaming.sh defaults
