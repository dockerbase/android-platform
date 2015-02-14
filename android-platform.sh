# Run the build scripts
apt-get update
apt-get install -y --no-install-recommends flex python2.7
ln -s /usr/bin/python2.7 /usr/bin/python
apt-get install -y --no-install-recommends bison g++-multilib git gperf libxml2-utils
apt-get clean
