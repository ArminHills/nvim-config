return{
	{'neovim/nvim-lspconfig',
	config = function()
		vim.lsp.enable({
			'pyright',
			'typescript-language-server'
		})
	end,},
	{'mason-org/mason.nvim',
	opts={}},
	{'mason-org/mason-lspconfig.nvim',
	 opts = {
            automatic_enable = true,
        },}
}
