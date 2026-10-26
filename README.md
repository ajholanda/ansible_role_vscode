# Ansible role vscode

[![Molecule](https://github.com/ajholanda/ansible_role_vscode/actions/workflows/molecule.yml/badge.svg?branch=main)](https://github.com/ajholanda/ansible_role_vscode/actions/workflows/molecule.yml?query=branch%3Amain)

Yet another Ansible role to manage VS Code installation.
On Debian-like distributions, VS Code is installed from the Microsoft apt repository.

## Requirements

None.

## Role Variables

- `package_state`: set a default value that can be used as a global variable across roles [ajholanda roles](https://galaxy.ansible.com/ajholanda). 
- `vscode_linux_signing_key_url`: GPG key for Linux systems.
- `vscode_yum_repository_url`: yum repository.
- `vscode_apt_repository_uri`: apt repository URI, written as a deb822 source in `/etc/apt/sources.list.d/vscode.sources`.
- `vscode_state`: desired state after running package manager task.

## Dependencies

None.

## Example Playbook

```
    - hosts: all
      roles:
        - ajholanda.vscode
```

To uninstall

```
    - hosts: all
      vars:
        vscode_state: absent
      roles:
        - ajholanda.vscode
```
## Testing

The role is tested with [Molecule](https://ansible.readthedocs.io/projects/molecule/)
on Debian, Ubuntu, Red Hat (AlmaLinux 9) and SUSE (openSUSE Leap 16.0)
containers using Docker:

```bash
pip install molecule 'molecule-plugins[docker]'
molecule test
```

The tests also run on GitHub Actions for every push and pull request.

## License

MIT.

## Author Information

[Adriano J. Holanda](https://ajholanda.github.io).
