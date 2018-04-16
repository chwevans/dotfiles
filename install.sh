DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install vim configuration
ln -sh $DIR/vimrc ~/.vimrc
ln -sh $DIR/vim ~/.vim

# Install gitconfig
ln -sh $DIR/gitconfig ~/.gitconfig

# Install aliases
ln -sh $DIR/aliases ~/.aliases
if grep -Fxq 'source ~/.aliases' ~/.bash_profile
then
        echo "Skipping aliases installation"
else
        echo "source ~/.aliases" >> ~/.bash_profile
fi

# Install
if grep -Fxq "export GOPATH=$HOME/Documents/go" ~/.bash_profile
then
        echo "Skipping GOPATH installation"
else
        echo "export GOPATH=$HOME/Documents/go" >> ~/.bash_profile
fi
