local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
  u = {
    name = "file", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
    -- r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false, buffer = 123 }, -- additional options for creating the keymap
    n = { "New File" }, -- just a label. don't create any mapping
    e = "Edit File", -- same as above
    ["1"] = "which_key_ignore",  -- special label to hide it in the popup
    b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
  },
  f = {
    name = "file", -- optional group name
    f = {"fuzzy filesearch"}, -- create a binding with label
    s = { "File Explorer" }, -- just a label. don't create any mapping
  },
  s = {
    name = "splits/ search",
    v = { "Vertical Split" },
    h = {"Horizontal Split" },
    e = {"equal split size"},
    m = {"maximize split"},
    x = {"close split"},
    s = {"Hop search"},
  },
  t = {
    name = "tabs / terminals",
    t = {"Terminal"},
    o = { "New Tab" },
    x = { "Close Tab" },
    p = { "Previous Tab" },
    n = { "Next Tab" },
  },
  h = {
    name = "harpoon",
    a = {"add file to harpoon"},
    b = {"add file to harpoon"},
    h = {"harpoon menu"},
  },
  g = {
    name = "Code Navigation",
    f = {"show definition"},
    D = {"jump declaration"},
    d = {"see definition"},
    i = {"show implementation"},
    w = {"show git worktree symbols"},
    wc = {"create new git worktree"},
  },
  l = {
    name = "LSP",
    a = {"code actions"},
    d = {"show diagnostics"},
    f = {"format code"},
    i = {"show implementation"},
    r = {"rename"},
    s = {"show signature"},
    L = {"show documentation whats under the cursor"},
  },
}, { prefix = "<leader>" })
