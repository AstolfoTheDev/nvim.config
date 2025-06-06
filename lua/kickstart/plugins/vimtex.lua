return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    init = function()
      vim.g.vimtex_mappings_disable = { ['n'] = { 'K' } } -- disable `K` as it conflicts with LSP hover
      vim.keymap.set('n', '<leader>li', '<Plug>(vimtex-info)')
      vim.cmd "let g:vimtex_view_general_viewer = 'zathura'"
      -- VimTeX configuration goes here
    end,
  },
}
