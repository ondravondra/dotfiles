# dotfiles

These are some of my dotfiles. I track them using git using a neat trick described on the [ArchWiki](https://wiki.archlinux.org/index.php/Dotfiles#Tracking_dotfiles_directly_with_Git) (I use Arch btw):

```
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no
dotfiles remote add origin git@github.com:ondravondra/dotfiles.git
dotfiles pull origin master
```
