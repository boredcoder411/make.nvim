M = {}

local config = {}

function M.setup()
	config = vim.tbl_deep_extend("force", config, setup_config or {})
	vim.api.nvim_create_user_command("MakePanel", require("plugin_name").make(), {})
end

function M.make()
	vim.cmd('vnew')
	vim.cmd('terminal make')
	vim.cmd('wincmd l')
	vim.cmd('wincmd h')
	vim.cmd('startinsert')
end

return M
