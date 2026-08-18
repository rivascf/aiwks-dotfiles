return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && npm install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
	config = function()
		--vim.g.mkdp_auto_start = 0 -- Don't auto-start preview on opening markdown files
		--vim.g.mkdp_auto_close = 1 -- Auto-close preview when switching buffers
		--vim.g.mkdp_refresh_slow = 0 -- Auto-refresh as you edit
		--vim.g.mkdp_command_for_global = 0 -- Only use in Markdown files
		--vim.g.mkdp_open_to_the_world = 0 -- Keep server local
		-- Add your custom CSS file path here
		--vim.g.mkdp_browser = "firefox" -- Example: Use Firefox for preview
		--vim.g.mkdp_css = vim.fn.stdpath("config") .. "/lua/custom_markdown_preview.css" -- Path to your custom CSS
		mkdp_css = "/home/frivas/.config/nvim/lua/frivas/plugins/markdown-themes/cleanTheme.css" --expand("~/.local/share/markdown-themes/cleanTheme.css") -- Path to your custom CSS
	end,
}
