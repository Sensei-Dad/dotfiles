# MasterShizzle's dotfiles

Your dotfiles are how you personalize your system. These are mine.

Forked from holman's dotfiles repo, which can be read about [here](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Organization

Everything's built around topics. If you're adding a new topic to your forked dotfiles — say, "Java" — you can simply add a `java` directory and put files in there: Anything with an extension of `.sh` will get automatically included into your shell, and anything with an extension of `.symlink` will get symlinked without extension into `$HOME` when you run `script/bootstrap`.

## Contents

Check them out in the file browser above. [Fork it](https://github.com/MasterShizzle/dotfiles/fork), remove what you don't use, and build on what you do use.

## Components

There are a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **topic/\*.sh**: Any files ending in `.sh` get loaded into your environment.
- **topic/path.sh**: Any file named `path.sh` is loaded first and is expected to setup `$PATH` or similar.
- **topic/completion.sh**: Any file named `completion.sh` is loaded last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.

## Installation

The main file you'll want to change right off the bat is `bash/bashrc.symlink`, which sets up a few paths that'll be different on your particular machine. I, for example, like to use TMux. Others may want to use something different.

`dot` is a simple script that installs some dependencies and whatnot. Tweak this script, and occasionally run `dot` from time to time to keep your environment fresh and up-to-date. You can find this script in `bin/`.

Run the following to install on your system:
```sh
git clone https://github.com/MasterShizzle/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory. Everything is configured and tweaked within `~/.dotfiles`.

## Bugs

None so far! This repo is intended to work on Linux machines that are accessed by command line, and `bash` is so universal by this point that the unintended side effects should be minimal.

## Thanks

I started this as a fork of [Zach Holman](http://github.com/holman)'s superlative [dotfiles](http://github.com/holman/dotfiles) repo, which is most probably a step in the backwards direction as I don't use ZShell or MacOS. His project structure and attention to detail are the reasons that this repo exists at all.