-- Install Lsp server
-- :LspInstall kotlin_language_server

local global = require("core.global")
local languages_setup = require("languages.global.utils")
local nvim_lsp_util = require("lspconfig/util")
local default_debouce_time = 150

local language_configs = {}

language_configs["lsp"] = function()
	local function start_kotlin_language_server(server)
		server:setup({
			flags = {
				debounce_text_changes = default_debouce_time,
			},
			autostart = true,
			filetypes = { "kotlin" },
			on_attach = function(client, bufnr)
				table.insert(global["languages"]["kotlin"]["pid"], client.rpc.pid)
				vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
				languages_setup.document_highlight(client)
				languages_setup.document_formatting(client)
				languages_setup.codelens(client)
			end,
			capabilities = languages_setup.get_capabilities(),
			root_dir = function(fname)
				return nvim_lsp_util.find_git_ancestor(fname) or vim.fn.getcwd()
			end,
		})
	end
	languages_setup.setup_lsp("kotlin_language_server", start_kotlin_language_server)
end

return language_configs
