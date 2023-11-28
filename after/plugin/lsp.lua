-- lsp.lua

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({ buffer = bufnr })
end)

lsp.setup()

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = {
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({ select = true }),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    }
})

local lspconfig = require("lspconfig")
lspconfig.gopls.setup({})

lspconfig.templ.setup({})

-- Enable html LSP for .templ files
vim.cmd([[
  augroup LSPConfig
    autocmd!
    autocmd BufRead,BufNewFile *.templ setfiletype html
    autocmd FileType templ setlocal omnifunc=v:lua.vim.lsp.omnifunc
  augroup END
]])

