DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install vim configuration
ln -s $DIR/vimrc ~/.vimrc
ln -s $DIR/vim ~/.vim

# Install gitconfig
ln -s $DIR/gitconfig ~/.gitconfig

# Install aliases
ln -s $DIR/aliases ~/.aliases
echo "source ~/.aliases" >> ~/.bash_profile

# Install 
echo "export GOPATH=$HOME/Documents/go" >> ~/.bash_profile
