return {
	"mfussenegger/nvim-dap",
	enabled = not IsVsCode,
	dependencies = {
		{ "rcarriga/nvim-dap-ui", dependencies = { "nvim-neotest/nvim-nio" } },
	},
	config = function()
		require("dapui").setup()

		local dap, dapui = require("dap"), require("dapui")

		-- godot support
		dap.adapters.godot = {
			type = "server",
			host = "127.0.0.1",
			port = 6006,
		}

		-- default settings, additional can be found here: https://github.com/godotengine/godot-vscode-plugin#gdscript-debugger
		dap.configurations.gdscript = {
			{
				type = "godot",
				request = "launch",
				name = "Launch scene",
				project = "${workspaceFolder}",
			},
		}

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<Leader>db", ":DapToggleBreakpoint<CR>", { desc = "debug toggle breakpoint" })
		vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>", { desc = "bebug continue" })
		vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>", { desc = "debug terminate" })
		vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>", { desc = "debug step over" })
	end,
}
