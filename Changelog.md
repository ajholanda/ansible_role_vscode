# Changes by release

## 0.2.0 2023-05-26

- Fix `vscode_state` default value in [defaults/main.yml](defaults.main.yml).
- Fix missing state in win_chocolatey module.
- Add dependencies information into [meta/main.yml](meta/main.yml).
- Add `win_chocolatey` tag into win_chocolatey task to allow selection of this 
module among ajholanda Galaxy roles.

## [0.1.0] 2023-05-18

- Add variable `package_state` to be used as default and generalized package state value.
- Confine repository state values on *_repository modules.
