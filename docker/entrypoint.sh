#!/bin/bash

# Add local user

USER=${USER:-guest}
USER_ID=${USER_ID:-9001}

GROUP=${GROUP:-guest}
GROUP_ID=${GROUP_ID:-9001}

echo "Starting with UID : $USER_ID"
groupadd -g $GROUP_ID $GROUP
useradd --shell /bin/bash -u $USER_ID -g $GROUP -o -c "" -m $USER
export HOME=/home/$USER

mkdir -p $HOME/host

cd $HOME/host

exec /usr/local/bin/gosu $USER "$@"
