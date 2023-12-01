local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvim_tree.setup {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  },
  filters = {
    dotfiles = false,
    git_ignored = false,
    git_clean = false,
    no_buffer = false,
    custom = { '^.git$' },
  },

  view = {
    width = 40,
    side = 'left',
    signcolumn = 'yes',
  },
}

vim.keymap.set('n', '<leader>tt', "<cmd>NvimTreeToggle<cr>", {silent = true})
