# Haaretz Config Files

This repository contains a collection of config files used for creating a baseline for developer cooperation.

## Git
Place the `.gitconfig` file at the root of your home directory _prior_ to installing git.

After git is installed, open the command line and run:
```sh
git config --global user.email "<your-email-here>"
git config --global user.name "<your github name here>"
```

And then run 
```sh
 git config --global user.email && git config --global user.name
```

To varify the settings.

## Editorconfig
EditorConfig helps developers define and maintain consistent coding styles between different editors, IDEs and computers. 
Additionally, it helps minimizing redundent whitespace diffs in version control systems, which are simply caused by differences
in editor settings.

To maintain consistency, each repository should contain an `.editorconfig` file identical to the one in this repo, at its root.

Editorconfig plugins are available for all major IDEs and text editors:
- [WebStorm](https://www.jetbrains.com/help/webstorm/2016.1/configuring-code-style.html#editorconfig)
- [InteliJ IDEA](https://www.jetbrains.com/help/idea/2016.1/code-style.html#EditorConfig)
- [Eclipse](https://github.com/ncjones/editorconfig-eclipse): https://github.com/ncjones/editorconfig-eclipse
- [Atom](https://github.com/sindresorhus/atom-editorconfig): https://github.com/sindresorhus/atom-editorconfig
- [Visual Studio code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig): https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig
- [Brackets](https://github.com/kidwm/brackets-editorconfig/): https://github.com/kidwm/brackets-editorconfig/
- [Sublime Text](https://github.com/sindresorhus/editorconfig-sublime): https://github.com/sindresorhus/editorconfig-sublime
- [Notepad++](https://github.com/editorconfig/editorconfig-notepad-plus-plus): https://github.com/editorconfig/editorconfig-notepad-plus-plus

