# julia-pkg

A command line interface to Julia's package manager functions.
Note that Julia must be available in your path; that is, it must be callable from the
command line as `julia`.

## Requirement
- rustc 1.25.0-nightly

## Installation

There is no rust environment, execute this.
```
./install_rust.sh
```

Run this to install julia-pkg
```
./install.sh --prefix %HOME/.local
```


## Commands

```
USAGE:
    julia-pkg [SUBCOMMAND]

FLAGS:
    -h, --help       Prints help information
    -V, --version    Prints version information

SUBCOMMANDS:
    help       Prints this message or the help of the given subcommand(s)
    install    Installs one or more packages
    list       Lists the name and version of one or more installed packages
    remove     Removes one or more packages
    update     Updates all installed packages
```

### Install packages

Packages registered in Julia's METADATA package registry can be installed
one or more at a time using
```
julia-pkg install Example1 Example2 ... ExampleN
```


Packages that are not registered can be installed by cloning the Git repository
using
```
julia-pkg install --git https://github.com/SomeUser/SomePackage.jl
```
The flag `-g` is available as a shorthand for `--git`.
Packages cloned from Git can only be specified one at a time.

### Remove packages

The command for removing packages is structured similarly to installing them
from the registry.
```
julia-pkg remove Example1 ... ExampleN
```

### Updating packages

All installed packages are updated at once.
```
julia-pkg update
```

### List installed packages

If no packages are provided, all installed packages and their versions are listed.
```
julia-pkg list
```
If packages are provided, only those are listed.
```
julia-pkg list Example1 ... ExampleN
```
