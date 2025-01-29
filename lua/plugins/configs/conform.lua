--type conform.options
local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },

		sh = { "shfmt" },

    python = { "isort", "black" },
    bash = { "shfmt" },
    fish = { "fish_indent" },
    go = { "goimports", "gofumpt", "goimports-reviser" },
    rust = { "rust-analyzer" },
		javascript = { "prettierd", "prettier" },
    typescript = { { "prettierd", "prettier" } },
    javascriptreact = { { "prettierd", "prettier" } },
    typescriptreact = { { "prettierd", "prettier" } },
    vue = { { "prettierd", "prettier" } },
    css = { { "prettierd", "prettier" } },
    scss = { { "prettierd", "prettier" } },
    less = { { "prettierd", "prettier" } },
    html = { { "prettierd", "prettier" } },
    json = { { "prettierd", "prettier" } },
    jsonc = { { "prettierd", "prettier" } },
    yaml = { { "prettierd", "prettier" } },
    markdown = { { "prettierd", "prettier" } },
    ["markdown.mdx"] = { { "prettierd", "prettier" } },
    graphql = { { "prettierd", "prettier" } },
	},

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!

	format_on_save = {
	  -- These options will be passed to conform.format()
	  timeout_ms = 500,
	  lsp_fallback = true,
	},
}

require("conform").setup(options)
