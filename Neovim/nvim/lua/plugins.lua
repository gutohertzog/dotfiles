-- Instala o gerenciador de pacotes Lazy se ainda não estiver instalado (Bootstraping)
-- Dica: concatenação de strings é feita com `..`
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- verifica se está ok a instalação
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
    return
end

-- lista de plugins usados
local plugins = {
    'EdenEast/nightfox.nvim',       -- tema para o programa
    'nvim-tree/nvim-tree.lua',      -- explorador de arquivos
    'nvim-tree/nvim-web-devicons',  -- ícones para o explorador de arquivos
    'nvim-lualine/lualine.nvim',    -- barra inferior com várias informações
    'archibate/lualine-time',
    { 'echasnovski/mini.indentscope', version = false }, -- linha de indentação animada
    { 'echasnovski/mini.pairs', version = false }, -- insere e apaga pares automaticamente
    { 'echasnovski/mini.surround', version = false },
    { 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },
    { 'stevearc/dressing.nvim', opts = {}, },
    'ggandor/leap.nvim', -- busca aprimorada
    'ggandor/flit.nvim', -- busca com f e t aprimorada
    {
        'nvim-telescope/telescope.nvim',    -- buscador de arquivo avançado
        --tag = '0.1.2',
        dependencies = {
            'nvim-lua/plenary.nvim',
            --'BurntSushi/repgrep'
        }
    },
    --'jonarrien/telescope-cmdline.nvim', -- cmdline como telescope
    { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },  -- adiciona destaque de sintaxe
    'nvim-treesitter/nvim-treesitter-refactor',
    "williamboman/mason.nvim",
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    "folke/neoconf.nvim",
}

lazy.setup(plugins, opts)

