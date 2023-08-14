local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)
lsp.ensure_installed({
	'docker_compose_language_service',
	'dockerls',
	'tsserver',
	'eslint',
	'lua_ls',
	'rust_analyzer',
	'tailwindcss',
	'prismals',
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

-- Make sure you setup `cmp` after lsp-zero

local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})
