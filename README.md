# dotfiles

git clone --recursive https://github.com/FrancoisBillant/dotfiles.git

submodules:
	.vim : https://github.com/FrancoisBillant/.vim.git

## Requirements
YouCompleteMe plugin needs to be installed and has requirements and C libs dependencies:

```
apt-get install -y python-dev build-essential cmake
```

### Install YouCompleteMe

```
cd dotfiles/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh
```

For completer like C, Go, JS... see the doc for options to pass to the install script: https://github.com/Valloric/YouCompleteMe

exemple, for C completer:
```
./install.sh --clang-completer
```



## Add a plugin

```
cd dotfiles/.vim
git checkout master
git pull
git submodule add https://github.com/tmhedberg/SimpylFold.git bundle/SimpylFold
git commit -m "blabla"
git push origin master

cd ..
git add -A
git commit -m "blabla"
git push origin master
```
