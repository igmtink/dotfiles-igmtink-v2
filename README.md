# Turn your Windows into Mac programming work space

![Screenshot 2023-11-12 204813](https://github.com/igmtink/dotfiles-igmtink-v2/assets/117252369/b4b10769-d4ec-457c-ba12-54b6c55e96ef)

## WSL + HOMEBREW + FISH

### WSL - Installation
1. Go to `Turn Windows features on or off` by searching the name in `Control Panel`.
2. Turn on this features `Virtual Machine Platform`, `Windows Hypervisor Platform`, & `Windows Subsystem for Linux`.
3. Restart your pc.
4. Run this command in `cmd` to check all distros available `Ubuntu`.
```cmd
wsl --install or wsl -l -o
```
5. After you choose the latest `Ubuntu` run this command in `cmd`.
```cmd
wsl --install -d Ubuntu.22.04
```
6. If you encounter an error in installing the `Ubuntu` run this command in `cmd`.
```cmd
wls --update
```
7. After the update, open `Ubuntu` to continue the installation.

### Homebrew - Installation
1. Install homebrew by running this command in `shell` of `Ubuntu` or go to [Homebrew](https://brew.sh/).
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Git - Installation
1. Run this command in `shell` of `Ubuntu`.
```shell
brew install git
```

### Node - Installation
1. Run this command in `shell` of `Ubuntu`.
```shell
brew install node
```

### PNPM - Installation
1. Run this command in `shell` of `Ubuntu`.
```shell
brew install pnpm
```

### Fish - Installation
1. Run this command in `shell` of `Ubuntu`.
```shell
brew install fish
```
2. Check the location where's the `fish` by running this command in `shell` of `Ubuntu`.
```shell
which fish
``` 
3. Changing the `default shell` into `fish shell` by running this command in `shell` of `Ubuntu`.
```shell
echo "(this is the location that you get in which fish)" | sudo tee -a /etc/shells
```
```shell
chsh -s "(this is the location that you get in which fish)"
```
4. Restart the `Ubuntu` to check if the `fish` is already the `default shell`.
5. Set the path of `brew` inside of `fish` by editing the `config.fish` that located on `/.config/fish/`, you can edit the `config.fish` by running this command in `shell` of `Ubuntu`.
```shell
nano ~/.config/fish/config.fish
```
6. Add this command in the end of line of `config.fish`.
```
set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH

# or

set -gx HOMEBREW_PREFIX /home/linuxbrew/.linuxbrew
set -gx HOMEBREW_CELLAR /home/linuxbrew/.linuxbrew/Cellar
set -gx HOMEBREW_REPOSITORY /home/linuxbrew/.linuxbrew/Homebrew
if status --is-interactive
    set PATH $HOMEBREW_PREFIX/bin $PATH
end
```
7. After setting the path of `brew` inside of `fish` we can now run all packages that we installed using `brew` like `pnpm`, `npm`, & `pnpm`

### Fish - Plugins
1. [Fisher](https://github.com/jorgebucaran/fisher#installation) - Plugin Manager
2. [Tide](https://github.com/IlanCosman/tide#installation) - Fish Shell theme
-  After installation copy this config for the custom themes by editing the `_tide_init.fish` located on `~/.config/fish/conf.d/` and add this line then restart the `shell`.
```fish
set -g tide_git_bg_color 268bd2
set -g tide_git_bg_color_unstable C4A000
set -g tide_git_bg_color_urgent CC0000
set -g tide_git_branch_color 000000
set -g tide_git_color_branch 000000
set -g tide_git_color_conflicted 000000
set -g tide_git_color_dirty 000000
set -g tide_git_color_operation 000000
set -g tide_git_color_staged 000000
set -g tide_git_color_stash 000000
set -g tide_git_color_untracked 000000
set -g tide_git_color_upstream 000000
set -g tide_git_conflicted_color 000000
set -g tide_git_dirty_color 000000
set -g tide_git_icon 
set -g tide_git_operation_color 000000
set -g tide_git_staged_color 000000
set -g tide_git_stash_color 000000
set -g tide_git_untracked_color 000000
set -g tide_git_upstream_color 000000
set -g tide_pwd_bg_color 444444
```
3. [Z for Fish](https://github.com/jethrokuan/z#installation) - Directory jumping
4. [Eza](https://github.com/eza-community/eza) - `ls` replacement
-  Installing `Eza` on `Ubuntu` or `WSL` there's a three step to install.
-  First install `Rust` & `Cargo` by running this command on `shell`.
```shell
curl https://sh.rustup.rs -sSf | sh
```
- Second set the path of `Rust` & `Cargo` inside of `fish` by editing the `config.fish` that located on `/.config/fish/` and add this line then restart the `shell`.
```fish
set -gx PATH $HOME/.cargo/bin $PATH
```
- Third install the `Eza` by running this command on `shell`.
```shell
cargo install eza
```
- After installation set the aliases for `Eza` by editing the `config.fish` that located on `/.config/fish/` and add this line then restart the `shell`.
```fish
if type -q eza
  alias ll "eza -l -g --icons"
  alias lla "ll -a"
end
```
