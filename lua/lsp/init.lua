local nvim_lsp = require("lspconfig")

nvim_lsp.tsserver.setup {}
nvim_lsp.bashls.setup {}
nvim_lsp.pyright.setup {}
-- pip install cmake-language-server
nvim_lsp.cmake.setup{}
-- npm install -g dockerfile-language-server-nodejs
nvim_lsp.dockerls.setup{}

-- brew install hashicorp/tap/terraform-ls
nvim_lsp.terraformls.setup{}

