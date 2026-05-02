# New ZFS Dataset for Container
# on ProxMox Host
# zfs create rpool/container-volumes/[new-container]

# ownership & permission for new container volume
for dir in config data media work; do
  chown -R root:root "/rpool/container-volumes/$dir"
  chmod -R 755 "/rpool/container-volumes/$dir"
done

# copy example
cp -r /rpool/container-volumes/nextcloud/data /rpool/container-volumes/data/nextcloud

# special user ownersip, on vm
chown -R 9987:9987 /rpool/container-volumes/teamspeak/
chown -R 5050:5050 /rpool/container-volumes/pgadmin/

# remove volumes in portainer from previous attempts
