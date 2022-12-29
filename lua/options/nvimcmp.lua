local cmp = require('cmp')

window_style = {
    winhighlight ="Normal:Pmenu,FloatBorder:Pmenu,Search:None", --cmp.config.window.bordered(), 
    col_offset = -3,
    side_padding = 1
}


options = {
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
          require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
      },
    window = {
        completion = window_style,
        documentation = window_style,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end),
        ['<S-Tab>'] = cmp.mapping(function(fallback) 
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end)
    }),

    sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
        }, 
        {
            { name = 'buffer' },
        }
    )
}

require('cmp').setup(options)
