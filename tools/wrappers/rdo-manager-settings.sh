#settings file to be used with rdo-manager-test.sh
#source this file then copy rdo-manager-test.sh to $WORKSPACE and execute

# READ_ME: Prior to executing rdo-manager-test.sh ensure ssh
# can connect to the $TEST_BED_IP as root via ssh keys.
# e.g. ssh-copy-id root@$TESTBED_IP

# Also ensure any value marked CHANGE_ME is updated

WORKSPACE=CHANGE_ME #base path of git checkouts, e.g. /tmp
TESTBED_IP=CHANGE_ME #hostname or ip of baremetal box
TESTBED_USER=stack  #don't use root here,only use stack
CONFIG_BASE=$WORKSPACE/khaleesi-settings
TEST_COMPONENT=instack-undercloud
TEST_COMPONENT_URL=git@github.com:rdo-management/instack-undercloud.git
PROVISION_OPTION=skip_provision  #[skip_provision, execute_provision] for baremetal box
DISTRO=rhel-7.1
PRIVATE_KEY=CHANGE_ME  # ~/.ssh/id_rsa
KHALEESI_SETTINGS=CHANGE_ME #git url to khaleesi-settings internal only atm.
KHALEESI=https://github.com/redhat-openstack/khaleesi.git
ANSIBLE_SETTINGS=packstack/jenkins/ansible_rdo_mang_settings.sh
