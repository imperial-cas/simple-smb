# simple-smb

Make it as easy as possible to serve some files over samba

## Usage

To serve the current directory, run:

``` sh
sudo podman run --rm --network=host -v .:/srv ghcr.io/imperial-cas/simple-smb:main
```

+ The `:Z` flag is needed for SELinux permissions. If you are not using SELinux you should omit that.
+ `sudo` is needed to bind the default ports for SMB

## Motivation

Supermicro BMCs expect to find ISO files to mount over SMB, and they only support SMB1. I wanted a way to serve an ISO for that with a single command.
