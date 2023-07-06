-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Tabulação
opt.expandtab = true -- usa espaços nas tabulações
opt.shiftwidth = 4 -- insere 4 espaços em uma tabulação
opt.smartindent = true -- mantém a indentação a partir da linha atual
opt.softtabstop = 4 -- número de espaços internos quando editando
opt.tabstop = 4 -- número de espaços inseridos por TAB

-- Interface
--opt.cmdheight = 0 -- esconde a linha de comando quando fora de uso
opt.colorcolumn = "80,100" -- adiciona as linhas à direita
opt.cursorline = true -- destaca a linha onde está o cursor
opt.cursorcolumn = true -- destaca a coluna onde está o cursor
opt.laststatus = 0 -- desativa a barra inferior
opt.number = true -- mostra os números das linhas
opt.relativenumber = true -- numeração das linhas de acordo com a posição do cursosr
opt.scrolloff = 1 -- quantidade de linhas acima e abaixo deixadas de espaço
opt.sidescroll = 10 -- quantidade de colunas a esquerda e direita deixadas de espaço
opt.showmatch = true -- mostra os pares dos ()[]{}
opt.showmode = false -- não mostra o modo atual, pois usa lualine
opt.signcolumn = "yes" -- sempre mostra os sinais na barra da esquerda
opt.wrap = true -- ativa o wrap nas linhas
opt.list = true -- mostra caracteres invisíveis
--opt.foldmethod = "manual" -- controla o fold

-- Busca
opt.ignorecase = true -- ignora Maiúsculas e minúsculas nas buscas por padrão
opt.incsearch = true -- busca enquando os caracteres são digitados
--opt.hlsearch = true -- destaca os resultados da busca
--opt.showmatch = true -- mostra a quantidade de matches e localização
opt.smartcase = true -- mas ativa novamente se uma letra maiúscula for usada
