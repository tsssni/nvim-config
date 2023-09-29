return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {"c", "cpp", "lua", "vim", "vimdoc", "query"},
      sync_install = false,
      auto_install = true,
      hightlight = {
        enable = true,
      },
    })
  end
}
