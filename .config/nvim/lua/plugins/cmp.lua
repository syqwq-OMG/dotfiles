-- ~/.config/nvim/lua/plugins/cmp.lua
-- use tab to select_next_item
-- use shift to select_prev_item

if true then
    return {}
end
return {
    {
        "hrsh7th/nvim-cmp",
        opts = function(_, opts)
            local cmp = require("cmp")
            opts.mapping = vim.tbl_extend("force", opts.mapping, {
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            })
            return opts
        end,
    },
}
