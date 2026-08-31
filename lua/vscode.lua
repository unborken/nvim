local vscode = require('vim.g.vscode')

-- mock telescope functionality
vim.keymap.set('n', '<leader>ff', function() vscode.action('workbench.action.quickOpen') end, { desc = 'VSCode find files' })
vim.keymap.set('n', '<leader>fg', function() vscode.action('workbench.action.findInFile') end, { desc = 'VSCode live grep' })
vim.keymap.set('n', '<leader>fb', function() vscode.action('workbench.action.showAllEditors') end, { desc = 'VSCode buffers' })
vim.keymap.set('n', '<leader>fh', function() vscode.action('workbench.action.showCommands') end, { desc = 'VSCode help tags' })
