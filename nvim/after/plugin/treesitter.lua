require'nvim-treesitter.configs'.setup {
  ensure_installed = {"python","typescript", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline","latex"},

  sync_install = false,


  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
