-- Resize to accomodate 80 character width code
Map('n', '<Leader>,', ':vertical resize 87<CR>', {})

-- Shortcut to write current buffer
Map('n', '<Leader><Enter>', ':w<CR>', {})

-- Shortcut to clear search highlight
Map('n', '<Leader><Space>', ':nohlsearch<CR>', {})

-- Disable accidental Ex mode
Map('n', 'Q', '<nop', {})

-- Delete trailing spaces
Map('n', '<Leader>rt', ':%s/\s\+$//e<CR>', {})
