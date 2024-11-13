return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	enabled = not IsVsCode,
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- dashboard.section.header.opts.hl = "Normal"
		-- vim.api.nvim_set_hl(0, "tau", { fg = "#ff6fff", bg = "" })
		-- dashboard.section.header.opts.hl = "tau"

		-- Set header
		dashboard.section.header.val = {
			"⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⠤⠶⠶⠛⠛⠉⢹⡇⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⢰⣀⠀⠀⠀⠀⠀⠈⠹⣆⢱⡄⠀⠀⠀⠀⠀⠀⠉⢻⡄⠀⠘⢷⡀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀",
			"⠤⠄⠒⠒⠂⠋⠉⠉⡟⠉⠀⢰⠃⠀⠀⠀⠀⣿⣇⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⢸⠘⣆⠀⠀⠀⠀⠀⣄⢹⡄⣇⠀⠐⣦⠀⠀⠀⠀⠀⢳⡀⠀⠈⢳⡀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⡏⠀⠀⠀⠀⠀⣿⣽⠀⠀⠀⡇⢸⠀⠀⠀⠀⠀⢸⡆⣿⡀⠀⠀⠀⠀⠸⣧⢻⣼⠀⠀⢻⣇⠀⠀⠀⠹⣆⢿⡀⠀⠈⢷⠀⠀⠀⠀⣿⢀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠸⡇⠀⠀⡇⠀⠀⠀⠀⢠⢿⣿⡄⠀⠀⡇⢹⡄⠀⠀⠀⠀⠀⣿⡟⣧⠀⠀⠀⠀⠀⢹⣷⢿⠀⠀⢸⠸⣧⠀⠀⠀⢹⣎⢧⠀⠀⠈⣧⠀⠀⠀⠀⠀⠙⡆⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⢀⡇⠀⢠⡇⠀⠀⠀⠀⣼⠀⠹⣧⠀⠀⢻⢸⣇⠀⠀⠀⠀⠀⢹⡇⢻⡄⠀⠀⠀⠀⠀⣿⣿⡄⠀⣼⠶⣿⡄⣠⣄⡀⣿⣾⡆⠀⠀⠸⣇⠀⠀⠀⠀⠀⠸⡀⠀",
			"⠀⠀⠀⠀⠀⠀⢰⣟⢷⠀⢸⡇⠀⠀⠀⠀⣿⠀⠀⠸⣇⠀⢸⣼⣿⠀⠀⠀⠀⠀⣄⣷⣾⣿⡿⠟⠛⠛⠳⣿⡘⣷⢀⡿⠀⠀⠷⠇⢹⡝⢿⡜⣿⠀⠀⠀⢻⡀⠀⠀⠀⠀⠀⢠⠴",
			"⠀⠀⠀⠀⠀⠀⣼⣿⡸⡇⠸⡇⠀⠀⠀⠀⢻⡀⠀⠀⠹⣦⢀⣿⣿⡆⠀⠀⣀⣀⣿⣿⡏⠁⠀⠀⠀⣀⣰⣀⣽⣻⡼⠁⠀⠀⠀⠀⠈⣷⠈⠇⢻⡇⠀⠀⠈⣇⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⡿⠻⢷⣽⡀⢧⠀⠀⠀⠀⢸⡿⠿⠗⠂⣿⢮⣿⡀⢿⣴⠞⠋⠉⠉⠉⠛⠠⢶⣲⡿⠿⠛⣁⣈⣬⣭⣄⣀⣀⠀⠀⠀⢸⡇⠀⠈⠃⠀⠀⠀⢻⡄⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⡀⡇⣠⣴⢷⣷⣸⡀⠀⣀⣀⡘⡇⠀⠀⠀⠘⣯⠛⢷⡌⢡⣤⠤⣤⣤⣆⣠⣴⡿⢋⣤⣶⣿⣿⣿⠛⠛⠛⠻⠿⣿⣶⣴⠀⣿⠀⠀⡄⠀⠀⠀⠘⣷⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⢸⠀⡿⠛⠁⠀⠉⠻⣷⠋⠉⠉⠉⢿⡀⠀⠀⠀⢿⣆⡀⠙⠋⠀⠀⠀⠀⠉⣹⢏⣴⣿⣿⡿⠟⠁⣼⠀⠀⠀⠀⠀⠀⠹⣿⡟⣿⠀⢀⡇⠀⠀⠀⠀⢹⣧⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠘⡆⣿⡀⠀⠀⠀⠀⣈⣤⣤⣤⣤⣴⣧⠀⠀⠀⠈⢻⡇⠀⠀⠀⠀⠀⠀⠀⢩⣾⡿⢷⣄⣀⣀⡴⠃⠀⠀⠀⠀⠀⠀⢠⡿⠁⢸⠀⢸⠀⠀⣤⠀⠀⠘⣿⡆⠀⠀⠀⠀",
			"⣄⡴⠶⠶⣶⣧⢿⠀⢀⣴⣾⣿⣿⣷⣶⣶⣶⣯⣿⢷⡄⠀⠀⠘⠁⠀⠀⠀⠀⠀⠀⠀⠸⠟⠀⠀⠈⠘⠁⣀⣀⣤⠤⠤⠤⢄⣠⠞⣁⠀⢸⠀⣿⡀⠀⣻⠀⠀⠀⣿⣷⠀⠀⠀⠀",
			"⠉⠀⠀⠈⣿⣿⣿⣷⣿⣿⠟⠉⠉⢿⡛⠻⠿⠿⣟⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣶⡿⣷⠖⠻⠟⠛⠟⢋⡵⢋⡘⡳⢸⣴⣟⡇⠀⡟⠀⠀⠀⢸⣿⣇⠀⠀⠀",
			"⠀⠀⠀⢰⣿⡿⣿⣿⣿⡅⠀⠀⠀⠀⠙⠷⠴⠶⠋⠀⠀⠀⢘⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣷⡶⢟⣠⠟⢃⡠⢂⡴⢋⣴⣯⠞⣡⣾⠏⢿⡇⢠⡇⠀⠀⠀⠀⡏⢻⡇⠀⠀",
			"⠀⠀⢰⠘⣿⠀⠘⢻⣿⣥⡀⠀⣀⣠⣤⣤⠤⢤⡤⠄⢀⡴⠋⠙⣆⠀⠀⠀⠀⠀⠀⠀⣠⢞⡵⡿⠋⣠⠞⠃⠀⢉⡴⠋⡰⢋⡼⣣⢞⡱⠋⠀⠈⢿⣼⠀⡄⠀⠀⠀⡇⠀⢿⣧⠀",
			"⠀⠀⢸⡀⢻⡆⡀⠀⢛⡯⢩⣿⠟⣉⡽⠃⣠⢞⡔⣠⢏⡤⠀⠀⠈⠂⠀⠀⠀⠀⢀⠜⠑⡋⠈⠀⠚⠁⠐⠀⣠⠞⠀⠘⣱⠛⠊⠡⡿⢰⠀⠀⠀⣰⡇⠀⡇⠀⠀⠀⡃⠀⠸⣇⣆",
			"⠀⠀⠘⣧⠸⣿⡇⠀⠩⢤⡾⢣⣤⡿⢥⡾⣡⢞⡴⠃⠈⠀⠀⠀⠀⠀⠀⠀⠀⠐⠁⠈⠀⠀⠀⠀⠀⠀⠀⠘⠁⠤⣠⠞⠁⠀⠀⠐⠷⠟⠀⠀⣠⠏⠀⣰⡏⠀⠀⠀⠀⠀⠀⢻⡜",
			"⠀⠀⠀⣿⢰⡹⣿⡄⠀⡼⣵⣿⠋⣰⠟⡴⣫⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠁⠀⠀⠀⠀⠀⠀⠀⢀⣴⠋⣠⢾⡿⡇⠀⠀⠀⢀⠀⠀⢸⣿",
			"⡄⠀⠀⣿⣿⣷⣿⣧⠆⠀⡽⠃⡼⠃⢈⡽⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⡤⠴⠲⢤⣤⣀⠀⠀⠀⠀⠀⣠⡾⠁⠀⠀⠀⠀⠀⠀⣀⣴⣿⠵⠋⠁⣸⠡⡇⠀⠀⠀⠸⡀⠀⡸⢿",
			"⡇⠀⠀⢹⣿⣿⣟⠿⣶⡌⢠⡞⠁⠀⠞⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠋⣁⣠⣤⣤⣶⣶⣦⣌⢉⣷⣶⣶⣿⡿⠀⠀⠀⠀⠀⠰⠖⠛⠋⠉⠀⠀⠀⠰⢿⠀⡇⠀⠀⠀⠀⠁⠐⠁⠀",
			"⣿⡀⠀⠀⢿⣻⣿⣇⠈⠙⠿⢤⣤⡄⠀⠀⠀⠀⠀⣶⣄⣠⣾⢁⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⠀⣧⠀⠀⠀⡀⠀⠇⠀⠀",
			"⠈⣷⡀⠀⠈⢷⡻⣿⡆⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⡇⣿⠀⠀⠀⡆⠀⠀⠄⠀",
			"⠀⣿⡿⣤⣀⠀⠻⣿⣿⣄⠀⠀⠀⣄⠾⡄⠀⠀⠀⠀⠀⠹⣿⣿⡿⠋⠈⠻⣿⣿⣿⠟⠉⠀⠀⠈⢿⡿⠁⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⠀⠀⠀⡇⠀⠀⠀⡀",
			"⣠⣿⡇⠀⠈⠓⢦⣀⡙⠻⣆⣀⠀⠙⢛⣣⡄⠀⠀⠀⠀⠀⠹⣿⡇⠀⠀⠀⢻⡿⠁⠀⠀⠀⠀⠰⢿⠀⠀⠀⠀⠀⠀⠀⠀⠘⠦⠆⠀⠀⣠⣾⣿⣿⣿⡿⣿⡇⠀⠀⣇⠀⠀⠀⢳",
			"⣥⣿⠁⠀⠀⣠⣿⣿⣿⣶⣶⣿⣟⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⢻⠀⠀⠀⠀⣾⡇⠀⠀⠀⢀⢈⣷⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⡇⠈⣿⠀⣤⣿⡀⠀⠀⠀",
			"⣿⡁⠀⣠⡾⣿⣿⣿⣿⡿⣿⣻⡏⠓⢦⣄⠀⠀⠀⠀⠀⠀⠀⡿⠀⠀⠀⠀⡟⠀⠀⠀⠀⠎⠉⡼⠻⡄⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣿⣿⣿⣹⣷⣶⠈⢣⣿⡾⢱⣦⡀⠀",
			"⠈⠙⠛⢿⣿⣶⣷⣶⣶⣶⣄⣽⣿⠀⠀⣿⣷⣤⡀⠀⠀⠀⠀⣷⠀⠀⠀⢠⣯⠀⠀⠀⠀⠀⣼⠳⣶⠟⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣿⣿⣀⣽⣿⣿⣿⣿⣿⠀⡾⣿⣷⣌⠻⣿⣦",
			"⠀⠀⠀⠀⠈⠙⠻⢿⣿⣿⣿⣿⠏⠀⣴⡿⣿⣿⣿⣶⣄⡀⠀⠹⡄⠀⠀⠀⠉⠀⠀⢀⣤⠞⠁⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣸⣿⣿⠏⣻⣆⠈⠉",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣧⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⣳⠀⠀⠀⠀⠀⣴⡏⠀⠀⠀⠀⠀⢀⣠⣴⣿⠿⠿⢿⣿⣿⣿⡿⠿⠟⠛⠉⠉⠁⠀⠀⢠⣿⣿⣿⠆⠉⠿⣧⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢯⡛⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡠⠀⠀⣸⡟⠀⠀⠀⢀⣠⡴⢟⣉⣤⡤⠶⠟⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⡁⠄⠁⠄⠙⢷",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⡀⠀⠉⠛⠛⠉⠙⠛⠋⠉⠳⣌⠉⠘⣧⣤⣶⡿⣛⣿⡾⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⡏⠁⠄⠁⠄⠀⠄",
			"⠀⠀⠀⠀⠀⢐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢑⣶⣄⠀⣀⢀⠀⠀⠀⠀⠀⢙⡇⠀⣿⢋⡉⠚⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⠄⠀⠀⠀⠄⠀⠄",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("f", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("g", "  > Find Text", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("c", "  > Open Config", "<cmd>Config<CR>"),
			dashboard.button("<C-w>", "  > Open Wez Config", "<cmd>WezConfig<CR>"),
			dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("<C-l>", "󰒲  > Lazy", "<cmd>Lazy<CR>"),
			dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
