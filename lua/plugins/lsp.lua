return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },

    opts = {
        servers = {
            lua_ls = {
	        settings = {
		    Lua = {
		        diagnostics = {
			    globals = {"vim", "blink.cmp.Config"},
			},
		    },
		},
	    },
	},
    },

    config = function(_, opts)
        require("mason").setup()
	require("mason-lspconfig").setup({
            ensure_installed = {"lua_ls", "pyright"}
        })

	for server, config in pairs(opts.servers) do
	    vim.lsp.config(server, config)
	    vim.lsp.enable(server)
	end
    end,

    vim.diagnostic.config({
	virtual_text = true,
	underline = true
    })
}
