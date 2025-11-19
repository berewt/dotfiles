return {
  {
    "tomasiser/vim-code-dark",
    name = "codedark",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.g.codedark_transparent = 1
      vim.cmd.colorscheme("codedark")
    end,
  },
}
