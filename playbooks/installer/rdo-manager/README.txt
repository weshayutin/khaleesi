See http://docs.openstack.org/developer/tripleo-docs/ for details about tripleo/rdo-manager
See http://khaleesi.readthedocs.org/en/master/cookbook.html for a quickstart

The ansible playbooks under rdo-manager should follow the install documentation as described in the tripleo documentation as
closely as possible.

If you are interested in using instack virtual provisioning (instack-virt-setup)

    To *only* cleanup a virthost:
    ansible-playbook -vv --extra-vars @ksgen_settings.yml -i local_hosts playbooks/installer/rdo-manager/cleanup_virthost.yml

    To *only* use instack-virt-setup to provision virt undercloud and overcloud nodes
    ansible-playbook -vv --extra-vars @ksgen_settings.yml -i local_hosts playbooks/installer/rdo-manager/instack-virt-setup.yml

Baremetal

    To *only* install the undercloud:
    ansible-playbook -vv --extra-vars @ksgen_settings.yml -i local_hosts playbooks/installer/rdo-manager/install_undercloud.yml

Images:


Overcloud:

    To *only* deploy the overcloud
    ansible-playbook -vv --extra-vars @ksgen_settings.yml -i hosts playbooks/installer/rdo-manager/overcloud/main.yml


