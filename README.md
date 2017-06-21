dotfiles
---

**Installing**

Clone with submodules:
```bash
  git clone git@github.com:Istar-Eldritch/dotfiles.git
  git submodule init
  git submodule update
```

Execute the `setup.sh` script:
```bash
  sh setup.sh
```


**Git**

* `.gitconfig`: defines my basic git configuration and some aliases.
* `.gitignore`: defines stuff I usually ignore, like vim related files and `.log` files.


**Shell**

* I use zsh
* [antigen](http://antigen.sharats.me/) as a plugin manager.
* Antigen is linked to the submodule during the setup process in `setup.sh`
* Configuration on `.zshrc`
  * Custom Functions:
    - `setupAWS [--unset]`: Sets the ENV_VARS for AWS access 
    - `kenv [environment]`: Configure kubernetes environment using the Repositivie naming conventions for domains.
    - `dme [environment]`: Configure docker-machine 

**Terminal Multiplexer**

* I use tmux
* [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
* TMP is installed during the `setup.sh` process.
* Configuration on `.tmux.conf`
  * Keybinds:
    - Resize panels
    - Clipboard (VI mode)

**Specific Configs for Lenovo X220**

* `.xbindkeysrc`
  - Audio Control (Require ponymix)
  - Backlight
  - WLAN & Bluetooth switches.
