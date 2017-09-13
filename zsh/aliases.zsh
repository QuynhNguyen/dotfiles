alias reload!='. ~/.zshrc'
alias ls='ls -GFh'

# Finder
alias showAllFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideAllFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Homebrew
alias brewUpdate='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'

# Python
alias python='python3'