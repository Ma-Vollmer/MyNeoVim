local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("abra.lsp.lsp-installer")
require("abra.lsp.handlers").setup()
