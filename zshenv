# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL


# fangj
PATH="/usr/local/sbin/:$PATH" 



# PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH" 
# MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH" 


# http://www.cnblogs.com/cocoajin/p/3729436.html
# if-shell 'test "$(uname)" = "Darwin"' 
if brew list | grep coreutils > /dev/null ; then
    # PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
    # fangj
    PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH" 
    MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH" 
    # endFang
    alias ls='ls -F --show-control-chars --color=auto'
    eval `gdircolors -b $HOME/.dir_colors`
fi

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# load rbenv if available
if which rbenv &>/dev/null ; then
  eval "$(rbenv init - --no-rehash)"
fi

# mkdir .git/safe in the root of repositories you trust
export PATH=".git/safe/../../bin:$PATH"


# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
