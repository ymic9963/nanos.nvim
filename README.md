# nanos.nvim
![Neovim](https://img.shields.io/badge/Built%20for-Neovim-green?logo=neovim&color=%2357A143&link=https%3A%2F%2Fmit-license.org%2F)
![Lua badge](https://img.shields.io/badge/Made%20with-Lua-purple?logo=lua&color=%23000080&link=https%3A%2F%2Flua.org%2F)
![MIT license](https://img.shields.io/badge/License-MIT-blue?link=https%3A%2F%2Fmit-license.org%2F)

Neovim colorscheme with dark and light modes. Main inspirations are these four colours #ffc777, #fca7ea, #4fd633, #65bcff, and  [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim).

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/ce467d6c-72e4-4870-9e78-e1c5a7b52e61" />
<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/91370a9e-1c96-4191-9b50-52fb08a1e46a" />

## Install
Made on Neovim 0.12+ but should work on lower versions. Use `vim.pack` to install,
```lua
vim.pack.add({"https://github.com/ymic9963/nanos.nvim"})
```

Make sure you have the following lines in your config to load the colorscheme,

```lua
vim.opt.background = "dark" -- optional
vim.cmd.colorscheme("nanos")
```
Change the background option to use either the dark (default) or light versions, and you can also change it while using Neovim by executing `:set background=light`.
