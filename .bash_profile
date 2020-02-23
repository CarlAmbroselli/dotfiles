export LANG=en_EN
export BASH_SILENCE_DEPRECATION_WARNING=1

# Setup autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export PATH=$HOME/.bin:$PATH:/usr/local/bin/
export PS1="\W → "

# Enable colors for ls and others
export CLICOLOR=1

[ "$(ls -A /Library/Java/JavaVirtualMachines)" ] && export JAVA_HOME=$("/usr/libexec/java_home" -v "1.8")
export NVM_DIR="$HOME/.nvm"
# non-homebrew nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# homebrew nvm
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.bash ] && . ~/.config/tabtab/__tabtab.bash || true
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash

# has to be here because it needs to cd the parent shell
function notes {
  NOTES_LOCATOR=$HOME/.notes-dir
  if ! test -f "$NOTES_LOCATOR"; then
    echo "Please create file at $NOTES_LOCATOR with folder of notes first"
    exit 1
  fi
  
  NOTES_DIR=$(cat $NOTES_LOCATOR)
  cd $NOTES_DIR;
}


