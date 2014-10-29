### PHP web development vimrc

#### To install:

```bash
$ cd ~
$ git clone git://github.com/arikal/vimrc.git .vim
$ ln -s .vim/.vimrc .
$ cd .vim
$ git submodule init
$ git submodule update
$ chmod u+x setup.sh
$ ./setup.sh
$ sudo apt-get install lynx
```

Now run VIM and type:

```bash
:BundleInstall
```

Finally, copy the sample docblock template files in `templates/pdv` and edit as required.
