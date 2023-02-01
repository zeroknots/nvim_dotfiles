local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end


vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- configure nvim-tree
nvimtree.setup({
  -- change folder arrow icons
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", -- arrow when folder is closed
          arrow_open = "", -- arrow when folder is open
        },
      },
    },
  },
  -- disable window_picker for
  -- explorer to work well with
  -- window splits
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
   },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
    root_folder_modifier = ":t",

  -- 	git = {
  -- 		ignore = false,
  -- 	},
})


