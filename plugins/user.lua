return {
  {
    "eddyekofo94/gruvbox-flat.nvim" ,
    init = function() -- init function runs before the plugin is loaded
      vim.g.gruvbox_flat_style = 'dark'
    end,
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
      shell = "/bin/fish",
    },
  },
}
