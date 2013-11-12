### Mark's .vimrc

#### To install:

```bash
$ cd ~
$ git clone git@git.mobilefun.co.uk:mark.shercliff/vimrc .vim
$ ln -s .vim/.vimrc .
$ cd .vim
$ git submodule init
$ git submodule update
$ chmod u+x setup.sh
$ ./setup.sh
````

Now run VIM and type:

```bash
:BundleInstall
```
