#!/bin/sh

[ "$MSOD" = "disable" ] && exit

bad_cmd='\echo Bad command or file name #'

alias msconfig='epindows'

alias dir='\ls -la'
alias ls=$bad_cmd

alias del='\rm -f'
alias rmdir='\rm -rf'
alias rm=$bad_cmd

alias cls='\clear'
alias clear=$bad_cmd

alias copy='\cp'
alias cp=$bad_cmd

alias rename='\mv'
alias mv=$bad_cmd

alias notepad='\alacritty -e vim'
alias vim=$bad_cmd

alias cmd='\alacritty'
alias powershell='\alacritty'
alias alacritty=$bad_cmd
