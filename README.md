# homebrew-urltracker

> Homebrew installer of urltracker

urltracker Github project: https://github.com/nalmeida/urltracker/

## Install

```
brew tap nalmeida/urltracker
brew install urltracker
```

## How to get the sha256 from a URL

```bash
curl -sL https://github.com/nalmeida/urltracker/archive/refs/tags/v1.0.1.tar.gz | sha256
```


## Troubleshooting / Uninstall

```
brew cleanup --prune=all
brew uninstall urltracker
brew untap nalmeida/urltracker
```