if not IsVsCode then
	local gdproject = io.open(vim.fn.getcwd() .. "/project.godot", "r")
	if gdproject then
		io.close(gdproject)
		vim.fn.serverstart("127.0.0.1:6004")
	end
end
