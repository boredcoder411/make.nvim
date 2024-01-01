## make.nvim
This is a plugin to run make inside of a new neovim plugin. I know :make works, but this happens in a new pane, to the left of whatever pane you're in.
## Installation
Add this to your lazy.nvim setup:
```lua
require("lazy").setup({
        {
                "boredcoder411/make.nvim"
        }
})
```
And this line to your init.lua:
```lua
require("make").setup({})
```
This should add the ```:MakePanel``` command to your neovim
## Extra steps (optional)
```vim.api.nvim_set_keymap('n', 'mk', ':MakePanel<CR>', { noremap = true, silent = true })```
This adds the ```mk``` keybind to run ```:MakePanel```
