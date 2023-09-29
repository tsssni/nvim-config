return {
  "neovim/nvim-lspconfig",
  config = function()
    lsp_config = require("lspconfig")
    lsp_config.clangd.setup({})
    lsp_config.cmake.setup({})
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "gR", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
    vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})
  end
}
