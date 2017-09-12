# PS3

PRAGMA S3

Roll to build and install [Scality Cloudserver](https://github.com/scality/S3) and its dependencies.

## Dependencies

Building and running S3 requires node.js v.6.* and npm v3.
Compiling  S3 modules with npm requires  python27 and gcc v 4.7+
which is provided with devtoolset-3

### devtoolset-3

devoolset-3 RPMs are downloaded from 
[people.centos.org repository](https://people.centos.org/tru/devtoolset-3-rebuild/x86_64/RPMS)

### nodejs

NOTE: RedHat RPMS for nodejs and nodesource repo RPM are available from RPM nodesource repository
that can be used for direct downloads of specifica versions:

* [CentOS 6 Nodejs v.6](https://rpm.nodesource.com/pub_6.x/el/6/x86_64/)
* [CentOS 6 Nodejs v.7](https://rpm.nodesource.com/pub_7.x/el/6/x86_64/)
* [CentOS 7 Nodejs v.6](https://rpm.nodesource.com/pub_6.x/el/7/x86_64/)
* [CentOS 7 Nodejs v.7](https://rpm.nodesource.com/pub_7.x/el/7/x86_64/)

Link from the [Scality Cloudserver](https://github.com/scality/S3) 
points to the [nodejs github instructions](https://github.com/nodesource/distributions)
for downloading and building nodejs.  These instrucitons are now used in this roll **src/nodejs/**

Summary of instructions

1. download nodejs setup script v.6 (as current S3 requires). 
   ```shell
   curl -sL https://rpm.nodesource.com/setup_6.x  > setup_6.sh
   ```
2. Eidt ths downloaded script stash in nodejs/patch-files.  Edited version does: 

   * download nodejs repo
   * setup yum to use it locally (do not install for the system)
   * download nodejs RPM

All dependencies, build or fetched per above instrucitons are saved in google ddrive 
and are downloaded in ``bootstrap.sh`` when building the roll.

### Scality s3

[Scality Cloudserver](https://github.com/scality/S3) is downloaded and saved 
in Google drive as a S3.tar.gz. The file is fetched during bootstrap step. 
Need to pin a release in S3 to use.


## Building a roll

Checkout roll distribution from git repo

```shell
    # git clone https://github.com/pragmagrid/PS3
    # cd PS3/
```

To build a roll, first execute a script that builds nodejs and installs prerequisites.

```shell
    # ./bootstrap.sh
    Then proceeed with building the roll:
```

# make roll
The resulting ISO file PS3-*.iso can be added to the frontend.

## Installing a roll

TBA

### What is Installed

## Using a roll

TBS
