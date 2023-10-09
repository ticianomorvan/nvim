return {
  {
    "neovim/nvim-lspconfig"
  },
  {
    "ms-jpq/coq_nvim",
    branch = "coq",
    -- https://github.com/ms-jpq/coq_nvim/issues/403
    config = function()
      vim.g.coq_settings = {
        auto_start = "shut-up"
      }

      require("coq")
    end
  },
  {
    "ms-jpq/coq.artifacts",
    branch = "artifacts"
  },
  {
    "nvim-tree/nvim-web-devicons"
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    keys = {
      { "ff", "<cmd>Telescope find_files<cr>", desc = "Find files using Telescope" },
      { "fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep using Telescope" },
      { "fb", "<cmd>Telescope buffers<cr>", desc = "Browse buffers using Telescope" },
      { "fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags using Telescope" }
    }
  },
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup{}
		end
	},
	{
		"nvim-tree/nvim-tree.lua",
		keys = {
			{ "tt", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" }
		},
		config = function()
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			require("nvim-tree").setup()
		end
	},
  {
     "catppuccin/nvim",
     name = "catppuccin",
     priority = 1000,
     config = function()
       vim.cmd.colorscheme "catppuccin"
     end
  },
	{
		"wakatime/vim-wakatime"
	}
}
