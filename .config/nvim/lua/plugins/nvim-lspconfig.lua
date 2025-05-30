-- LSP keymaps
return {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
        -- local keys = require("lazyvim.plugins.lsp.keymaps").get()

        -- change a keymap
        -- keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
        -- disable a keymap
        -- keys[#keys + 1] = { "<c-k>", false }
        -- keys[#keys + 1] = { "<c-p>", false }
        -- add a keymap
        -- keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }
        --
        --
        opts.inlay_hints = {
            enabled = true,
            exclude = { "cpp" }, -- filetypes for which you don't want to enable inlay hints
        }
        return opts
    end,
}
