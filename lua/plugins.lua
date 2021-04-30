local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile"

return require("packer").startup(
    function(use)
	    use 'ambv/black'
	    use 'neovim/nvim-lspconfig'
        use 'nvim-lua/completion-nvim'
        use 'tjdevries/nlua.nvim'
        use 'tjdevries/lsp_extensions.nvim'
        use 'puremourning/vimspector'
        use 'szw/vim-maximizer'
        use 'rust-lang/rust.vim'
        use 'tweekmonster/gofmt.vim'
        use 'tpope/vim-fugitive'
        use 'junegunn/gv.vim'
        use 'vim-utils/vim-man'
        use 'mbbill/undotree'
        use 'vuciv/vim-bujo'
        use 'tpope/vim-dispatch'
        use 'theprimeagen/vim-be-good'
        use 'octol/vim-cpp-enhanced-highlight'
        use 'tpope/vim-projectionist'
        use 'nvim-lua/popup.nvim'
        use 'nvim-lua/plenary.nvim'
        use 'nvim-telescope/telescope.nvim'
        use 'nvim-telescope/telescope-fzy-native.nvim'
        use 'colepeters/spacemacs-theme.vim'
        use 'phanviet/vim-monokai-pro'
        use 'flazz/vim-colorschemes'
        use 'chriskempson/base16-vim'
        use 'mhinz/vim-rfc'
        use 'ThePrimeagen/neovim-irc-ui'
        use 'sbdchd/neoformat'
        use 'preservim/nerdtree'
        use 'Xuyuanp/nerdtree-git-plugin'
        use 'tiagofumo/vim-nerdtree-syntax-highlight'
        use 'wakatime/vim-wakatime'
    end
)
