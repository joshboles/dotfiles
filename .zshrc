# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH=/usr/local/sbin:$PATH

source /usr/local/bin/virtualenvwrapper.sh
source ~/antigen.zsh

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
# export PATH="/Users/josh/.rvm/gems/ruby-2.0.0-p451/bin:/Users/josh/.rvm/gems/ruby-2.0.0-p451@global/bin:/Users/josh/.rvm/rubies/ruby-2.0.0-p451/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Users/josh/.rvm/bin:/Users/josh/Mobile/android-sdk/platform-tools:/Users/josh/Mobile/android-sdk/tools:/usr/local/sbin"

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias chrome='open Google\ Chrome --args --disable-web-security'
alias runserv='python manage.py runserver 0.0.0.0:8000 --insecure'
alias subl='subl .'
alias tma='tmux attach'
alias fe='node Website.Tests/WebViewer/server.js'
alias serve='python -m SimpleHTTPServer'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
