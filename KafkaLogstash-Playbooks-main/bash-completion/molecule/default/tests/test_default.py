import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


def test_bash_completion_installed(host):
    assert host.package("bash-completion").is_installed


def test_bash_completion_directory(host):
    f = host.file("/etc/bash_completion.d")
    assert f.exists
    assert f.is_directory
