#!/bin/bash

export PATH=/Users/admin/mongodb/bin:$PATH

function hardreset {

git fetch origin master && git reset --hard FETCH_HEAD && git clean -df

}

function getmac {

 ifconfig en0 | grep ether

}



function flushcache {
sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say cache flushed
}




function gw {
grunt watcher
}

function view-port {
 lsof -i 4tcp:$1
}

function locate-port {
view-port
}








function edit-cron {
env EDITOR=nano crontab -e
}

function cron-edit {
edit-cron
}

function edit-cronjob {
edit-cron
}

function editcron {
edit-cron
}

function editcronjob {
edit
}


##############
# Reset Bash #
##############
function bash-reset {
    source ~/.bash_profile
}

function reset-bash {

source ~/.bash_profile

}

function reload-bash {
source ~/.bash_profile
}

function bash-reload {
source ~/.bash_profile
}

###########################
#    Directory Helpers    #
###########################
# function kraken {
#     cd ~/Desktop/kraken
# }

#function gw {
#    grunt watcher
#}




######################
#   Style Git CLI    #
######################

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}


export PS1="\[\033[36m\]HappyCoding@ \w\[\033[32m\]\$(parse_git_branch)\[\e[33m\] $ "

#####################
#      Aliases      #
#####################

alias findport='lsof -n -i4TCP:9001'
alias locateport='lsof -n -i4TCP:9001'
alias killport='kill -9'
alias findport80='lsof -n -i4TCP:80'
alias clearhosts='dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
alias clearhost='dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
]
