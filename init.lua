vim.opt.number = true

vim.opt.relativenumber = true

vim.opt.tabstop = 4

vim.opt.shiftwidth = 4

vim.pack.add({

	{ src= "https://github.com/loctvl842/monokai-pro.nvim.git", name= "monokai-pro", },
	{ src = 'https://github.com/neovim/nvim-lspconfig.git' },
	{ src = 'https://github.com/mason-org/mason.nvim.git' },

})

require("monokai-pro").setup()
vim.cmd.colorscheme("monokai-pro")

require("mason").setup()
local lsp_servers = {"lua_ls", "clangd", "ty"}

for _, server in ipairs(lsp_servers) do
	vim.lsp.enable(server)
end

-- keybinds

-- leader to space
vim.g.mapleader = ' '
-- help at cursor 
vim.keymap.set('n', '<Leader>h', ':help!<CR>')
-- pull up floating window to display error on line (it's lowk just <Ctrl>-W + d tho)
vim.keymap.set('n', '<Leader>e', vim.diagnostic.open_float)
