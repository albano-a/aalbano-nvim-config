return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,

        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")
            local servers = {
                "lua_ls", "clangd", "cssls", "emmet_language_server", "emmet_ls", "rust_analyzer","tsserver", "html", "ltex", "marksman", "pyright"
            }
            for _, lsp in ipairs(servers) do
                lspconfig[lsp].setup({
                    capabilities = capabilities
                })
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
                vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
            end
        end
    }
}
