require("mason").setup()
require("mason-tool-installer").setup({
	ensure_installed = {
		"tree-sitter-cli",
		"lua-language-server",
		"prettier",
		"prettierd",
		"selene",
		"shellcheck",
		"shfmt",
		"stylua",
		"eslint-lsp",
		"oxlint",
		"oxfmt",
		"tailwindcss-language-server",
		"vtsls",
		"copilot-language-server",
		"rust-analyzer",
		-- Not in upstream's list (craftzdog installs these outside Mason), but
		-- enabled below, so install them here to avoid "failed to spawn" errors.
		"css-lsp",
		"glsl_analyzer",
		-- Go and Clojure (carried over from the previous config)
		"gopls",
		"clojure-lsp",
	},
	auto_update = false,
	run_on_start = true,
})

local capabilities = {
	workspace = {
		fileOperations = {
			didRename = true,
			willRename = true,
		},
	},
}
vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(capabilities),
})

vim.lsp.enable({
	"eslint",
	"oxlint",
	"lua_ls",
	"cssls",
	"vtsls",
	"tailwindcss",
	"glsl_analyzer",
	"rust_analyzer",
	"gopls",
	"clojure_lsp",
	"metals", -- installed via coursier, not Mason (see after/lsp/metals.lua)
})
