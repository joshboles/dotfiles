# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source ~/antigen.zsh
source /usr/local/bin/virtualenvwrapper.sh

antigen use oh-my-zsh

# Antigen Things
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle python
antigen bundle virtualenv
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme candy

antigen apply

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
# export PATH="/Users/joshboles/.rvm/gems/ruby-2.0.0-p451/bin:/Users/joshboles/.rvm/gems/ruby-2.0.0-p451@global/bin:/Users/joshboles/.rvm/rubies/ruby-2.0.0-p451/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Users/joshboles/.rvm/bin:/Users/joshboles/Mobile/android-sdk/platform-tools:/Users/joshboles/Mobile/android-sdk/tools:/usr/local/sbin"

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias chrome='open Google\ Chrome --args --disable-web-security'
alias runserv='python manage.py runserver 0.0.0.0:8000'
alias subl='subl .'
