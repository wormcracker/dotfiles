# My Linux Setup

This repository contains my personal Linux dotfiles and configuration files. It showcases my preferred development and productivity environment, including tools like **bspwm**, **zsh**, **rofi**, **conky**, **polybar**, and more. Feel free to fork or use these configurations to improve your own setup.

## Table of Contents

1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Installation](#installation)
4. [Tools and Software](#tools-and-software)
5. [Customization](#customization)
6. [Screenshots](#screenshots)
7. [License](#license)

## Introduction

This repository contains my dotfiles and configurations for a fully customized Linux setup. The setup includes a powerful terminal, application launcher, status bar, and system monitor. I use **zsh** as my shell, **rofi** for an application launcher, **conky** for system monitoring, and **polybar** as my status bar.

## Prerequisites

Before setting up the environment, ensure that you have the following installed:

- **Linux Distribution**: Any modern Linux distribution (e.g., Ubuntu, Arch Linux, Fedora, etc.)
- **Package Manager**: Depending on your distro (e.g., `apt`, `pacman`, `dnf`, etc.)
- **Required Software**:
  - `zsh`
  - `rofi`
  - `conky`
  - `polybar`
  - `git`
  - `vim` (or any text editor)
  - `curl` (for downloading scripts)
  - Other tools as per the config files

### Installing Dependencies

Here's a list of basic dependencies for Ubuntu-based distributions:

```bash
sudo apt update
sudo apt install zsh rofi conky polybar git vim curl
```

For Arch-based distributions, you can use `pacman`:

```bash
sudo pacman -S zsh rofi conky polybar git vim curl
```

# Installation Guide for Dotfiles

## Clone the Repository

Start by cloning the repository to your system:

```bash
git clone https://github.com/yourusername/dotfiles.git
cd dotfiles

mv ~/.zshrc ~/.zshrc.bak
mv ~/.config/polybar ~/.config/polybar.bak
mv ~/.config/rofi ~/.config/rofi.bak
mv ~/.config/conky ~/.config/conky.bak
```

# Tools and Software

- **bspwm**: A powerful window manager
- **sxhkd**: X daemon that reacts to input events by executing commands.
- **zsh**: A powerful shell with autocompletion and advanced scripting features.
- **rofi**: A fast and lightweight application launcher that provides fuzzy searching for quick app launches.
- **conky**: A system monitor that shows real-time information about system resources (CPU, RAM, disk usage, etc.) on your desktop.
- **polybar**: A highly customizable status bar that can display system information, application launchers, notifications, and more.

# Customization

- **zsh**: The zsh configuration is customized with themes and plugins to improve the shell's productivity. The setup includes plugins like `zsh-autosuggestions`, `zsh-syntax-highlighting`, and `zsh-completions`.
- **rofi**: I use a custom theme for rofi, with additional scripts for launching apps, searching files, and more.
- **conky**: Conky is customized to show system stats such as CPU, RAM, network, and disk usage in a clean, minimalistic way.
- **polybar**: Polybar is configured to show system stats, date/time, music controls, and more. You can customize the modules to fit your needs.

# How to Customize

- **zsh Theme**: Modify the theme in `~/.zshrc` by changing the `ZSH_THEME` variable to your preferred theme.
- **rofi Themes**: Update your theme by editing the `~/.config/rofi/config.rasi` file.
- **Conky**: Edit the `~/.config/conky/conky.conf` file to change the system monitor layout and displayed information.
- **Polybar**: Modify the configuration files in `~/.config/polybar/config` to change the appearance and modules.

# Screenshots

- **Window Manager**

![Setup Image](https://raw.githubusercontent.com/wormcracker/dotfiles/refs/heads/main/.config/bspwm/linux_bspwm_setup.png)

# License

This project is licensed under the MIT License - see the LICENSE file for details.
