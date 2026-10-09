vim.opt.number = true

vim.opt.relativenumber = true

vim.opt.tabstop = 4

vim.opt.shiftwidth = 4

vim.pack.add({

	{ src="https://github.com/loctvl842/monokai-pro.nvim.git",
	  name= "monokai-pro",
	}

})

require("monokai-pro").setup()
vim.cmd.colorscheme("monokai-pro")
