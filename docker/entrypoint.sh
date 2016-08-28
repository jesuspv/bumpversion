#!/bin/bash

USER=${USER:-guest}
USER_ID=${USER_ID:-9001}

GROUP=${GROUP:-guest}
GROUP_ID=${GROUP_ID:-9001}

groupadd -g $GROUP_ID $GROUP
# TODO add all host user groups as well (not only the main group)
useradd --shell /bin/bash -u $USER_ID -g $GROUP -o -c "" -m $USER
export HOME=/home/$USER

mkdir -p $HOME/host
cd $HOME/host

exec /usr/local/bin/gosu $USER "$@"
