# tuxi-termux
A shell script that installs [Tuxi](https://github.com/Bugswriter/tuxi) in [Termux](https://termux.com).

# Usage
## tl;dr for lazy people
```
curl -sL https://github.com/CrackedMatter/tuxi-termux/releases/download/v1/installtuxi.sh | bash
```
## Detailed instructions
Download the script [here](https://github.com/CrackedMatter/tuxi-termux/releases/download/v1/installtuxi.sh) or using `curl`:
```
curl -sL https://github.com/CrackedMatter/tuxi-termux/releases/download/v1/installtuxi.sh -o installtuxi.sh
```
Run the script. Installing [Termux:API](https://wiki.termux.com/wiki/Termux:API) beforehand will give you progress updates during the installation.
```
bash installtuxi.sh
```
The installation is split into three parts:
- Installing needed Termux packages
- Compiling and installing [Recode](https://github.com/rrthomas/recode)
- Installing [Tuxi](https://github.com/Bugswriter/tuxi)
Not specifying any arguments will do all of the above.

To only install Termux packages, run:
```
bash installtuxi.sh pkgs
```
To only install [Recode](https://github.com/rrthomas/recode), run:
```
bash installtuxi.sh recode
```
To only install [Tuxi](https://github.com/Bugswriter/tuxi), run:
```
bash installtuxi.sh tuxi
```
This can be be useful if something fails and you want to redo it.

When you are done, you may delete the script:
```
rm installtuxi.sh
```

# About
[Tuxi](https://github.com/Bugswriter/tuxi) was made by [Suraj Kushwah AKA Bugswriter](https://github.com/Bugswriter).
