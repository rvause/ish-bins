# iSH builds

Build scripts for binaries I want in [iSH](https://github.com/ish-app/ish).

## Build

First build the builder image:

```sh
$ just mkimage
```

Then run a script with something like:

```sh
$ just build nano 5.9
```

or run a shell with:

```sh
$ just shell
```

or abritrary command with:

```sh
$ just run ls scripts
```
