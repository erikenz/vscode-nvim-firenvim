# Installation

## 📦 Dependencies

Before you proceed, make sure you have the following installed:

- [NeoVim 0.9+](https://github.com/neovim/neovim)
- [make](https://www.gnu.org/software/make/)
- [fzf](https://github.com/junegunn/fzf) - a general-purpose command-line fuzzy finder
- [ripgrep](https://github.com/BurntSushi/ripgrep) - a line-oriented search tool
- [Nerd Fonts](https://www.nerdfonts.com/font-downloads) - for icon and glyph support
- [vscode-neovim](https://github.com/vscode-neovim/vscode-neovim/) - a NeoVim integration extension for VSCode
- A system clipboard integration tool (`:help clipboard-tool`)
- C++ Compiler
  - **For Linux**: G++
  - **For Windows**: MinGW

## ⚙️ Installation

To use this config, follow these steps:

1. Clone this repository into your nvim config folder, which is typically:
   - **Linux/Mac**: `$HOME/.config/`
   - **Windows**: `$ENV:LocalAppData`
2. Specify the path to your `init.lua` in the `vscode-neovim` extension settings in VSCode.
3. Open NeoVim, which will automatically install the plugins on the first start.

> **Note**: VSCode config files can be found in the `.vscode/` directory.
