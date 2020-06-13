# dotfiles
Automations to ready a computer for my personal uses.

## Things will be installed
- TODO

## How to install

### Pre-install
[Generate a new SSH key for GitHub connection](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) if it is not already done. This step is intended to be manual as the setup varies based on situations. A few recommendations:
- Use ed25519 to generate new SSH key.
- Use a dedicated SSH key for each GitHub account.

Example of per account SSH config:
```
Host github.com-[GitHub_Handle]
  HostName github.com
  User git
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile [Private_Key_File]
```
Example of using per account SSH setup:
```
git clone git@github.com-[GitHub_Handle]:jozhan/dotfiles.gits
```

### Install
Firstly run the `install.sh` script to prepare the computer and clone the this repo to `~/.dotfiles`.

    bash -c "`curl -fsSL https://raw.githubusercontent.com/jozhan/dotfiles/master/install.sh`"

## Credits
- Huge thanks to amazing [dotfile community](https://dotfiles.github.io/)
- And all the good stuffs I learnt from [webpro/dotfiles](https://github.com/webpro/dotfiles)
