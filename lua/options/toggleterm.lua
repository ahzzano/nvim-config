function get_size(term) 
    return vim.o.columns * 0.3
end

require('toggleterm').setup({
    direction='vertical',
    size = get_size
})
