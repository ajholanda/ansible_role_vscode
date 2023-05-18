# Ansible role vscode

Yet another Ansible role to manage VS Code installation.
On Debian-like distributions, VS Code is installed using Snap.

## Requirements

None.

## Role Variables

- `package_state`: set a default value that can be used as a global variable across roles [ajholanda roles](https://galaxy.ansible.com/ajholanda). 
- `vscode_linux_signing_key_url`: GPG key for Linux systems.
- `vscode_yum_repository_url`: yum repository.
- `vscode_apt_repository_url`: apt repository to add in the sources list.
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
## License

MIT.

## Author Information

[Adriano J. Holanda](https://ajholanda.github.io).
