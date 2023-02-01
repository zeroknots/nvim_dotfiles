local opt = vim.opt -- deconstruct vim options

-- line number
opt.relativenumber = true
opt.number = true

-- tabs 
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line
opt.wrap = false

-- search

opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true


-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"


-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true



opt.iskeyword:append("-")


opt.scrolloff=7


-- reopen files where they were last opened
vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = {"*"},
    callback = function()
        if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.api.nvim_exec("normal! g'\"",false)
        end
    end
})
