require("toggleterm").setup {
    size = vim.o.columns * 0.30 or function(term)
        if term.direction == 'horizontal' then
            return 15
        elseif term.direction == 'veritical' then
            return vim.o.columns * 0.28
        end
    end,
    open_mapping = [[<leader>ft]],
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 5,
    start_in_insert = true,
    persist_size = true,
    shell = vim.o.shell,
    auto_scroll = true,
    direction = 'vertical',
    close_on_exit = true,
}

-- Mappings
--
vim.keymap.set('t', "<leader>tm", [[<C-\><C-n>]])
vim.keymap.set('n', "<leader>tgt", ":ToggleTerm direction='tab'<CR>")
vim.keymap.set('n', "<leader>tm", ":TabRename Terminal<CR>")
--
--
