# New ZFS Dataset for Container
# on ProxMox Host
zfs create rpool/container-volumes/new-container

# test ?
chown -R root:root /rpool/container-volumes/
chmod -R 755 /rpool/container-volumes/

# remove volumes in portainer from previous attempts