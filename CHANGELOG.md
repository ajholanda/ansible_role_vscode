# Changes by release

## 2026.10.26

### Added

- Molecule test scenario for Debian, Ubuntu, Red Hat (AlmaLinux 9) and SUSE
(openSUSE Leap 16.0).
- Galaxy `namespace` in the meta information.
- GitHub Actions workflow running ansible-lint and Molecule tests.

### Changed

- Manage the apt repository with `ansible.builtin.deb822_repository`
instead of the deprecated `ansible.builtin.apt_repository`; the Microsoft key
is now fetched by the module into `/etc/apt/keyrings/vscode.asc`.
- Replace `vscode_apt_repository_url` (one-line `deb` entry) with
`vscode_apt_repository_uri` and drop `vscode_apt_keyring`. Legacy
`vscode.list` and keyring files are removed.
- Require Ansible >= 2.15 (ansible-core) for `deb822_repository`.

### Fixed

- Install VS Code on Debian and Ubuntu from the Microsoft apt repository
instead of Snap, which failed because `snapd` was not ready right after its
installation (and the unrelated `snap` package was installed).
- Install `code` instead of `google-chrome-stable` on openSUSE.

## 0.2.0 2025-06-20

### Added

- Use namespace in the modules.
- Fix versions value type in the meta information.
- Add `win_chocolatey` tag into win_chocolatey task to allow selection of this 
module among ajholanda Galaxy roles.

## [0.1.0] 2023-05-18

### Added

- Add variable `package_state` to be used as default and generalized package state value.

### Fixed

- Confine repository state values on *_repository modules.
