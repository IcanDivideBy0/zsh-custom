zsh-custom
==========

Personal zsh custom config directory

install
==========

Oh My Zsh:
```sh
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
```

custom directory:
```sh
cd ~/.oh-my-zsh/custom
git init
git remote add -f origin git@github.com:IcanDivideBy0/zsh-custom.git
git checkout master
git submodule update --init
cd -
```

enable plugins i actually use:
```sh
sed -i 's/^plugins=(.*)$/plugins=(ssh-agent git nvm)/' ~/.zshrc
```
