Homebrew repository for installing various strayptr projects or the utilities they rely on, such as `realpath`.

I'm using [this example formula](https://github.com/Homebrew/homebrew/blob/master/Library/Contributions/example-formula.rb) as a guide for how to craft my own formulas.

# This tap provides...

## realpath

```
brew update
brew tap strayptr/tap
brew install realpath
```

This is meant to be a reliable, safe, and simple way for OS X users to install realpath.  The formula verifies the sha256 of the code archive file from [strayptr/realpath](https://github.com/strayptr/realpath), then builds and installs it using Homebrew's standard `bin.install` method.  The resulting `realpath` binary usually ends up at `/usr/local/bin/realpath`.

It's also meant to be a stable formula for developers to create projects whose installation process requires it.