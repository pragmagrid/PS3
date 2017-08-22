PKGROOT	     = /opt/PS3
NAME         = ps3-nodejs
VERSION      = 1.0
RELEASE      = 1

NODEJS_MAJOR = 6
SETUP_SCRIPT = setup_$(NODEJS_MAJOR).sh
NODEJS_REPO  = nodesource-release-el$(NODEJS_MAJOR)-1

TARBALL_POSTFIX	= tgz
