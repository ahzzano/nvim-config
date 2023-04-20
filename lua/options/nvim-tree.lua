options = {
    open_on_setup_file = false,
    view = {
        side = "left",
        width = 25,
        mappings = {
          custom_only = false,
          list = {
            {key = "v", action = 'vsplit'},
            {key = "<S-v>", action = 'split'}
          }
        }
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
    git = {
      ignore = false,
      enable = true
    }
}

vim.api.nvim_create_autocmd("BufEnter", {
    nested = true,
    callback = function()
      if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
        vim.cmd "quit"
      end
    end
})

require("nvim-tree").setup(options)
