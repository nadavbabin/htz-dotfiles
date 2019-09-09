# Config Files

This repository contains a collection of configuration files used for creating 
a baseline for developer cooperation.

## Git
Clone the repo, run the `installGitConf` script and answer the prompts.

A `.gitconfig` file will be written to your home directory. If one already 
existed, it will be backed up as `old.gitconfig`

The `installCompletions` script will automatically setup git commands and 
branch name auto completion for bash.

## Editorconfig
EditorConfig helps developers define and maintain consistent coding styles 
between different editors, IDEs and computers. Additionally, it helps minimizing 
redundant whitespace diffs in version control systems, which are simply caused 
by differences in editor settings.

To maintain consistency, each repository should contain an `.editorconfig` file 
identical to the one in this repository, at its root.

EditorConfig plugins are available for all major IDEs and text editors:
- [WebStorm](https://www.jetbrains.com/help/webstorm/2016.1/configuring-code-style.html#editorconfig)
- [InteliJ IDEA](https://www.jetbrains.com/help/idea/2016.1/code-style.html#EditorConfig)
- [Eclipse](https://github.com/ncjones/editorconfig-eclipse): https://github.com/ncjones/editorconfig-eclipse
- [Atom](https://github.com/sindresorhus/atom-editorconfig): https://github.com/sindresorhus/atom-editorconfig
- [Visual Studio code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig): https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig
- [Brackets](https://github.com/kidwm/brackets-editorconfig/): https://github.com/kidwm/brackets-editorconfig/
- [Sublime Text](https://github.com/sindresorhus/editorconfig-sublime): https://github.com/sindresorhus/editorconfig-sublime
- [Notepad++](https://github.com/editorconfig/editorconfig-notepad-plus-plus): https://github.com/editorconfig/editorconfig-notepad-plus-plus

