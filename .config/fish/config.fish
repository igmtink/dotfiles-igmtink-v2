set fish_greeting ""

set -gx TERM xterm-256color

# Theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git

# Set the path of Homebrew
# set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH
set -gx HOMEBREW_PREFIX /home/linuxbrew/.linuxbrew
set -gx HOMEBREW_CELLAR /home/linuxbrew/.linuxbrew/Cellar
set -gx HOMEBREW_REPOSITORY /home/linuxbrew/.linuxbrew/Homebrew
if status --is-interactive
    set PATH $HOMEBREW_PREFIX/bin $PATH
end

# Set the path of Rust & Cargo
set -gx PATH $HOME/.cargo/bin $PATH

# Eza aliases
if type -q eza
  alias ll "eza -l -g --icons"
  alias lla "ll -a"
end
