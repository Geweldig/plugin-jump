![][license-badge]

<div align="center">
  <a href="http://github.com/oh-my-fish/oh-my-fish">
  <img width=90px  src="https://cloud.githubusercontent.com/assets/8317250/8510172/f006f0a4-230f-11e5-98b6-5c2e3c87088f.png">
  </a>
</div>
<br>

#  jump

A port of [Jeroen Janssens' "jump" utility][1] to the fish shell (and [Oh My Fish!][omf-link]). Forked from [plugin-jump][fork-link].

## New functionality
- Jump to most recently used mark when invoking jump without parameters.
- Fix bug where `marks` did not show the actual directories.
- Remove the possibility to set marks for a directory you're not in.
- Slight refactoring.

## Configuration

If you have a custom mark folder, you can add the following to your `~/.config/fish/before.init.fish`.

```fish
set -gx MARKPATH     YOUR_CUSTOM_FOLDER_PATH_HERE
set -gx JUMPHISTPATH YOUR_CUSTOM_FOLDER_PATH_HERE
```

# License

[MIT][mit] © [bpinto][author], [Geweldig][other-author] et [al][contributors]


[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/bpinto
[other-author]:         https://github.com/Geweldig
[contributors]:   https://github.com/oh-my-fish/plugin-rbenv/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish
[fork-link]:      https://github.com/oh-my-fish/plugin-jump
[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[1]: http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html
