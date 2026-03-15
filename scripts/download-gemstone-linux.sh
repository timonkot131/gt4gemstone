if [ -z "$GEMSTONE_WORKSPACE" ]
then
	echo "GEMSTONE_WORKSPACE must be defined"
	exit 1
fi

if [ -z "$GT_GEMSTONE_VERSION" ]
then
	echo "GT_GEMSTONE_VERSION must be defined"
	exit 1
fi

# Archive filenames omit any -BetaN suffix, but the download directory keeps it.
GT_GEMSTONE_ARCHIVE_VERSION=${GT_GEMSTONE_VERSION%-Beta*}

cd ${GEMSTONE_WORKSPACE}
unzip ../GemStone64Bit${GT_GEMSTONE_ARCHIVE_VERSION}-arm64.Linux.zip
#unzip ../GemStoneClientLibs${GT_GEMSTONE_ARCHIVE_VERSION}-x86_64.Linux.zip
