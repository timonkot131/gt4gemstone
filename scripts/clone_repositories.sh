#!/bin/bash
set -e

if [ -z "$ROWAN_PROJECTS_HOME" ]
then
	echo "ROWAN_PROJECTS_HOME must be defined"
	exit 1
fi

cd $ROWAN_PROJECTS_HOME
git clone https://github.com/GemTalk/Sparkle.git
git clone https://github.com/GemTalk/RemoteServiceReplication.git
git clone https://github.com/GemTalk/SparkleFFI.git
git clone https://github.com/GemTalk/Rowan.git
git clone https://github.com/GemTalk/Announcements.git

# gt4gemstone is normally cloned manually to get this script

git clone https://github.com/feenkcom/gtoolkit-remote.git
