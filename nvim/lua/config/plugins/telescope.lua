return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags) --searches telescope help tags
      vim.keymap.set("n", "<space>f", require('telescope.builtin').find_files) --find files in current directory
      vim.keymap.set("n", "<space>en",                                         --uses telescope on neovim config directory
        function()
          require('telescope.builtin').find_files {
            cwd = vim.fn.stdpath("config")
          }
        end)
    end
  }
}
