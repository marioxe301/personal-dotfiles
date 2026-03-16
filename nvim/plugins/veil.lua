return {
	"Gentleman-Programming/veil.nvim",
	event = "VeryLazy",
	config = function()
		require("veil").setup({
			files = {
				".dev.vars",
				".dev.vars.*",
				".env",
				".env.*",
				".npmrc",
				".pypirc",
				"credentials.json",
				"secrets.yaml",
				"secrets.yml",
				".secrets",
			},
			patterns = {
				{ pattern = "(%w+_KEY%s*[=:]%s*[\"']?)([^\"'\n]+)", group = 2 },
				{ pattern = "(%w+_SECRET%s*[=:]%s*[\"']?)([^\"'\n]+)", group = 2 },
				{ pattern = "(%w+_TOKEN%s*[=:]%s*[\"']?)([^\"'\n]+)", group = 2 },
				{ pattern = "(%w+_PASSWORD%s*[=:]%s*[\"']?)([^\"'\n]+)", group = 2 },
				{ pattern = "(%w+_ACCESS%s*[=:]%s*[\"']?)([^\"'\n]+)", group = 2 },
				{ pattern = "(%w-_ID%s*[=:]%s*[\"']?)([^\"'\n]+)", group = 2 },
			},
			reveal_on_insert = true,
		})
	end,
}
