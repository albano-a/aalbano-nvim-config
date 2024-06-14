return {
    {
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup()
    end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                "lua_ls", "clangd", "cssls", "emmet_ls",
                "tsserver", "ltex", "marksman", "rust_analyzer","pyright"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local servers = {
                "lua_ls", "clangd", "cssls", "emmet_ls", "rust_analyzer","tsserver", "ltex", "marksman", "pyright"
            }
            for _, lsp in ipairs(servers) do
                lspconfig[lsp].setup({})

                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
                vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
            end
        end
    }
}
