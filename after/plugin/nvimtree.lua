-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
    filters = {
        dotfiles = false,
        exclude = { vim.fn.stdpath "config" .. "/lua/custom" },
    },
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = true,
    hijack_unnamed_buffer_when_opening = false,
    sync_root_with_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = false,
    },
    view = {
        adaptive_size = false,
        side = "right",
        width = 40,
        hide_root_folder = true,
    },
    git = {
        enable = false,
        ignore = true,
    },
    filesystem_watchers = {
        enable = true,
    },
    actions = {
        open_file = {
            resize_window = true,
        },
    },
    renderer = {
        highlight_git = false,
        highlight_opened_files = "none",

        indent_markers = {
            enable = false,
        },

        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },

            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    default = "",
                    empty = "",
                    empty_open = "",
                    open = "",
                    symlink = "",
                    symlink_open = "",
                    arrow_open = "",
                    arrow_closed = "",
                },
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "",
                    ignored = "◌",
                },
            },
        },
    },})

vim.keymap.set("n", "<leader>e", ":NvimTreeFocus <CR>")
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle <CR>")
