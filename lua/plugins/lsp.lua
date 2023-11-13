return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup({})
    require("mason-lspconfig").setup({})
    vim.cmd(":MasonUpdate")

    local registry = require("mason-registry")
    local function check_installation(name)
      if not registry.is_installed(name) then
        vim.cmd(":MasonInstall " + name)
      end
    end
    check_installation("lua-language-server")
    check_installation("clangd")
    check_installation("cmake-language-server")
    check_installation("codelldb")

    local lsp_config = require("lspconfig")
    lsp_config.clangd.setup({})
    lsp_config.cmake.setup({})
    lsp_config.lua_ls.setup({})
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "gR", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
    vim.keymap.set("n", "gf", vim.lsp.buf.format, {})
    vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})
  end
}
