# dotfiles

git clone --recursive https://github.com/FrancoisBillant/dotfiles.git

submodules:
	.vim : https://github.com/FrancoisBillant/.vim.git

## Add a plugin

```
cd dotfiles/.vim
git checkout master
git pull
git submodule add https://github.com/tmhedberg/SimpylFold.git bundle/SimpylFold

cd ..
git add -A
git push origin master
```
