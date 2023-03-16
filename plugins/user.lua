return {
  { 
    "eddyekofo94/gruvbox-flat.nvim" ,
    init = function() -- init function runs before the plugin is loaded
      vim.g.gruvbox_flat_style = 'dark'
      vim.g.gruvbox_dark_sidebar = true
      vim.g.gruvbox_sidebars = { 'Neotree' }
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true, -- when true, they will just be displayed differently than normal items
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
  },
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      opts.winbar = nil
      return opts
    end
  },
  {
    "akinsho/toggleterm.nvim",
    opts = {
      shell = "/bin/fish"
    },
  },
  { 
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        panel = {
          auto_refresh = false,
          keymap = {
            accept = "<CR>",
            jump_prev = "[[",
            jump_next = "]]",
            refresh = "gr",
            open = "<M-CR>",
          },
        },
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<M-l>",
            prev = "<M-[>",
            next = "<M-]>",
            dismiss = "<C-]>",
          },
        },
      })
    end,
  },
}
