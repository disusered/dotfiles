-- Initialize hop
require'hop'.setup {}

-- EasyMotion-like motion
Map('n', 's', [[<cmd>lua require'hop'.hint_char1()<cr>]], {noremap=false})
