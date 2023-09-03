-- requring plugin
local installed, LspSaga = pcall(require, "lspsaga")
if not installed then
	vim.notify("Plugin 'lspsaga' not installed")
	return
end

-- Setting up lspsaga
LspSaga.setup({
	debug = false,
	use_saga_diagnostic_sign = false,
    use_saga_code_action_sign = false,
	-- diagnostic sign
	error_sign = "",
	warn_sign = "",
	hint_sign = "",
	infor_sign = "",
	diagnostic_header_icon = "   ",
	-- code action title icon
	code_action_icon = "",
	code_action_prompt = { enable = false, sign = false, sign_priority = 40, virtual_text = false },
	finder_definition_icon = "  ",
	finder_reference_icon = "  ",
	max_preview_lines = 10,
	definition_preview_icon = "  ",
	border_style = "single",
	rename_prompt_prefix = "➤",
	server_filetype_map = {},
	diagnostic_prefix_format = "%d. ",
})
