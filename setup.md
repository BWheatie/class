# Setup Your Machine

1. Xcode CLI tools need to be installed first: `xcode-select --install`
2. Install homebrew 
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew update
3. `brew install git`
4. `brew install zsh`
5. To make your prompt easier to read, start `zsh`, then:
        git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
    
        setopt EXTENDED_GLOB
        for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
            ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
        done
        chsh -s /bin/zsh

6. Setup rbenv
        brew install rbenv
        printf 'eval "$(rbenv init -)"' >> ~/.zshrc

7. `brew install ruby-build`
8. Install ruby
        
        rbenv install 2.2.2
        rbenv rehash
        rbenv global 2.2.2
        gem install bundler
        gem install pry

9. Make things convienent (don't worry about what this is doing now)

        git config --global core.excludesfile ~/.gitignore
        printf "vendor/bundle\n.DS_Store\n" >> ~/.gitignore
        mkdir -p ~/.bundle
        printf -- "---\nBUNDLE_PATH: vendor/bundle" >> ~/.bundle/config
        
10. Make sure you have your ssh key [setup with github](https://help.github.com/articles/generating-ssh-keys/).