return {
    "stevearc/conform.nvim",
    opts = function(_, opts)
        opts.formatters_by_ft = {
            cpp = { "clang_format" },
            javascript = { "prettier" },
            typescript = { "prettier" },
            javascriptreact = { "prettier" },
            typescriptreact = { "prettier" },
            css = { "prettier" },
            html = { "prettier" },
            json = { "prettier" },
            yaml = { "prettier" },
            lua = { "stylua" },
            fish = { "fish_indent" },
            sh = { "shfmt" },
        }
        opts.formatters = {
            injected = { options = { ignore_errors = true } },
            clang_format = {
                prepend_args = { "--style={BasedOnStyle: LLVM, IndentWidth: 4, TabWidth: 4}" },
            },
            prettier = {
                -- Add Prettier configuration options here
                -- prepend_args = { "--tab-width", "4" },
                prepend_args = { "--tab-width", "2" },
            },
        }
        return opts
    end,
}
