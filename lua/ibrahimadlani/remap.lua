-- Définit l'ensemble de touches pour les mappings en utilisant la touche 
-- d'espace comme leader. Cela signifie que toutes les touches suivant la
-- touche d'espace peuvent être utilisées pour créer des mappings personnalisés.
vim.g.mapleader = " "

-- Crée un mapping pour exécuter la commande Ex lorsque <leader>pv est pressé
-- en mode normal.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Les touches J et K sont utilisées pour déplacer les lignes sélectionnées
-- vers le bas ou vers le haut en mode visuel.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- La touche J permet également de fusionner la ligne courante avec la ligne
-- suivante en mode normal.
vim.keymap.set("n", "J", "mzJ`z")

-- Les touches Ctrl+d et Ctrl+u sont utilisées pour faire défiler l'écran d'une
-- page vers le bas ou vers le haut en mode normal.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Les touches n et N permettent d'avancer ou de reculer le curseur jusqu'à
-- l'occurrence suivante ou précédente de la recherche en cours en mode normal.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Le code crée des raccourcis pour lancer et arrêter l'outil "vim-with-me",
-- qui permet de collaborer en temps réel sur un document Vim.
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)


--  remplacer la sélection par le contenu du presse-papiers, tout en copiant la sélection originale dans le clipboard.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copier la sélection ou la ligne courante dans le presse-papiers système
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- Copier la sélection ou la ligne courante dans le presse-papiers système
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- Copier toutes les lignes suivantes dans le presse-papiers système à partir de la ligne courante.
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Supprimer la sélection ou la ligne courante sans la copier dans le presse-papiers lorsque <leader>d est pressé.
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- La touche Ctrl+c permet d'annuler l'insertion et de revenir en mode normal
-- en mode insertion.
vim.keymap.set("i", "<C-c>", "<Esc>")

-- La touche Q est désactivée en mode normal.
vim.keymap.set("n", "Q", "<nop>")

-- La touche Ctrl+f permet de lancer l'outil "tmux-sessionizer" dans une
-- nouvelle fenêtre Tmux en mode normal.
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- La touche <leader>f permet de formater le document en cours à l'aide du
-- serveur LSP.
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Les touches Ctrl+j et Ctrl+k permettent de passer à l'erreur précédente ou
-- suivante de la liste d'erreurs en mode normal.
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Les touches <leader>j et <leader>k permettent de passer au marqueur précédent ou suivant dans la liste des marqueurs en mode normal.
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- La touche <leader>s permet de remplacer toutes les occurrences du mot sous le curseur dans le document en cours.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Mapping en mode normal pour exécuter la commande chmod +x sur le fichier en cours (%) et le rendre exécutable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Mapping en mode normal pour ouvrir le fichier Packer de la configuration Vim 
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/:nvim/.config/nvim/lua/ibrahimadlani/packer.lua<CR>");

-- Procrastrination mapping
vim.keymap.set("n", "<leader>md", "<cmd>CellularAutomaton game_of_life<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- Source the current file with <leader><leader>
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- write a new keymap that will take me to the previously opened file stored in a buffer

vim.keymap.set("n", "<leader>o", function()
    vim.cmd("e#")
end)

