set fish_greeting "Hi Nate!"

# == Variables == #
set -gx TERM xterm-256color

set -gx EDITOR nvim

set -gx LDFLAGS "-Wl,-rpath,$(brew --prefix openssl)/lib"
set -gx CPPFLAGS "-I$(brew --prefix openssl)/include"
set -gx CONFIGURE_OPTS "--with-openssl=$(brew --prefix openssl)"

# need access to PATH stuff
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/go/bin $PATH
set -gx NVM_DIR "$HOME/.nvm"
#if test -s "/usr/local/opt/nvm/nvm.sh"
#  \. "/usr/local/opt/nvm/nvm.sh"
#end
#[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always
set -g COLOR_SCHEME dark


alias vim="nvim"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# NVM
#function __check_rvm --on-variable PWD --description 'Do nvm stuff'
#  status --is-command-substitution; and return
#
#  if test -f .nvmrc; and test -r .nvmrc;
#    nvm use
#  else
#  end
#end
