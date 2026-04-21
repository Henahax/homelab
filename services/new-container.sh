# New ZFS Dataset for Container
# on ProxMox Host
zfs create rpool/container-volumes/[new-container]

# ownership & permission for new container volume
chown -R root:root /rpool/container-volumes/[new-container]
chmod -R 755 /rpool/container-volumes/[new-container]

# special user ownersip
chown -R 9987:9987 /rpool/container-volumes/teamspeak/
chown -R 5050:5050 /rpool/container-volumes/pgadmin/

# remove volumes in portainer from previous attempts
