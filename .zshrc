# Path to your oh-my-zsh installation.
export ZSH=/Users/zacharyverbeck/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER="zacharyverbeck"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, osx)

# User configuration

export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/heroku/bin:/Users/zacharyverbeck/.rbenv/shims:/Users/zacharyverbeck/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/usr/texbin:/Users/zacharyverbeck/ec2-api-tools-1.7.2.2/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export RBENV_ROOT="$HOME/.rbenv" 
if [ -d $RBENV_ROOT ]; then
  export PATH="$RBENV_ROOT/bin:$PATH"
  eval "$(rbenv init -)"
fi

start() {
	open ~/Desktop/minecraft_server/start.command
	open Minecraft
}

alias klaatu='ssh -o PreferredAuthentications=password zgv@klaatu.cs.washington.edu'

alias hlog='heroku logs --tail'

alias sync-upstream='rsync -av --exclude='node_modules' --exclude='.git' --exclude='.env' ~/dev/capstone/Loop\ Space\ Server/ ec2:Loop-Space-Server'

alias sync-portfolio='rsync -av --exclude='node_modules' --exclude='.git' --exclude='.env' ~/dev/portfoliosite do:portfolio'

alias sm='emacs'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export EC2_HOME=~/ec2-api-tools-1.7.2.2
export PATH=$PATH:$EC2_HOME/bin
export AWS_ACCESS_KEY=AKIAIYCQ2HLN3ZHHE66Q
export AWS_SECRET_KEY=6og3x6YCBhwcr2YiUyBFoUQztNpigNuYpJ/dnXrb
export ANDROID_NDK=~/android-ndk-r10e
export ANDROID_HOME=/usr/local/opt/android-sdk

##
# Your previous /Users/zacharyverbeck/.bash_profile file was backed up as /Users/zacharyverbeck/.bash_profile.macports-saved_2015-12-06_at_22:19:59
##

# MacPorts Installer addition on 2015-12-06_at_22:19:59: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

