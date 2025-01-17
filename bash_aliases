
# notify user that aliases were loaded
echo "executed ~/.bash_aliases"
echo "use command 'aliases' to see a list of all aliases"
echo

# remind user of set aliases
alias aliases='cat ~/.bash_aliases'

# list files
alias l='ls -CFt' # list files in columns, classified, sorted by most recent 
alias la='l -A'  # list all files including hidden
cl() { cd "$@" && l; } # change directory and list files in custom format

# git commands
alias gml='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short --author="Darion Williams"'
alias gl='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gc='git commit'
alias gac='git add . && git commit -m'
alias gp='git push'
alias gpom='git push origin master'
alias gbv='git branch -v'
alias grv='git remote -v'
alias gco='git checkout'

# launch file explorer / default browser
alias open='explorer.exe'

# navigation
alias hr='cl ~/Documents/HR' 
alias toy='cd ~/Documents/HR/toy-problems'

# navigate to pull request for submitting toy problem
alias submit='open https://github.com/hackreactor/hr-rfp54-toy-problems/compare/darionbuilds...darionbuilds:master'

# managing server ports
lport() { lsof -t -i:"$@"; } # list processes on specified port number
killport() { kill -9 $(lsof -t -i:"$@"); } # kill process on specified port number

# mysql
mysql-start() {
  sudo service mysql start
  sudo service mysql status
  mysql -u root
}

