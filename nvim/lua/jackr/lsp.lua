require('lspconfig').texlab.setup({
  settings = {
    texlab = {
      build = {
        executable = "latexmk",
        args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
        onSave = true
      },
      forwardSearch = {
        executable = "zathura", -- Change to your preferred PDF viewer
        args = { "--synctex-forward", "%l:1:%f", "%p" }
      }
    }
  }
})

-- nvim-cmp setup
local cmp = require('cmp')
local lspconfig = require('lspconfig')

cmp.setup({
  snippet = {
    expand = function(args)
      -- Use vsnip or another snippet engine
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
})

-- Set up TexLab with nvim-cmp LSP capabilities
lspconfig.texlab.setup({
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

