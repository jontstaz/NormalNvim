return {
	{
		"joshuavial/aider.nvim",

		opts = {
			-- auto_manage_context = false,
			default_bindings = false,
		},

		keys = function()
			return {
				{
					"<leader>ao",
					"<cmd>lua AiderOpen()<cr>",
					desc = "Aider Open",
				},
				{
					"<leader>ab",
					"<cmd>lua AiderBackground()<cr>",
					desc = "Aider Background",
					-- defaults to message "Complete as many todo items as you can and remove the comment for any item you complete."
				},
			}
	end,
	},
	{
		'Exafunction/codeium.vim',
  	event = 'BufEnter'
	},
	{
  	"folke/flash.nvim",
  	event = "VeryLazy",
  	---@type Flash.Config
  	opts = {},
  	-- stylua: ignore
  	keys = {
    	{ "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    	{ "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    	{ "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    	{ "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    	{ "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  	},
	},
	{
    "kdheepak/lazygit.nvim",
    requires = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
			-- auto_manage_context = false,
			default_bindings = true,
		},
	},
	-- Add todo-comments.nvim plugin:
	-- https://github.com/folke/todo-comments.nvim
	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		event = "User BaseFile",
		opts = {},
	},
	{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
 },
 	{
    "rebelot/kanagawa.nvim",
  },
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
},
  {
    "nvim-neorg/neorg",
    cmd = "Neorg",
    ft = "norg",
    dependencies = { "luarocks.nvim", "nvim-lua/plenary.nvim"  },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/Documents/Neorg",
              },
            },
          },
        },
      }
    end,
  },
  {
    "charludo/projectmgr.nvim",
    lazy = false,
  },
}
