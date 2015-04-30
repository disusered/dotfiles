nmap        <Space>           <Plug>(easymotion-bd-t2)
nmap        <Leader>d         <Plug>DashSearch
nmap        <expr> K          <SID>doc("\<Plug>DashSearch")
nmap        <Leader>/         <Plug>CommentaryLine
vmap        <Leader>/         <Plug>Commentary
nmap        <Leader>w         <Plug>(choosewin)
nmap        ˚                 [e
nmap        ∆                 ]e
vmap        ˚                 [egv
vmap        ∆                 ]egv
vmap        <Enter>           <Plug>(LiveEasyAlign)
noremap     H                 ^
noremap     L                 g_
nnoremap    Q                 <nop>
nnoremap    <Leader>q         :bp\|bd #<CR>
nnoremap    <Leader>md        :MarkedOpen!<CR>
nnoremap    <Leader>gs        :Gstatus<CR>
nnoremap    <Leader>ga        :Gcommit --amend<CR>
nnoremap    <Leader>gc        :Gcommit -v -q<CR>
nnoremap    <Leader>gt        :Gcommit -v -q %:p<CR>
nnoremap    <Leader>gd        :Gdiff<CR>
nnoremap    <Leader>gr        :Gread<CR>
nnoremap    <Leader>ge        :Gedit<CR>
nnoremap    <Leader>gw        :Gwrite<CR><CR>
nnoremap    <Leader>gl        :Gitv --all<CR>
nnoremap    <Leader>gh        :Gitv!<CR>
nnoremap    <Leader>gm        :Gmove<Space>
nnoremap    <Leader>gco       :Git checkout<Space>
nnoremap    <Leader>gp        :terminal git push<CR>
nnoremap    <Leader>gfm       :terminal git pull<CR>
nmap        <Leader>gv        :Gitv! --all<cr>
vmap        <Leader>gv        :Gitv! --all<cr>
nnoremap    <Leader>p         :CtrlP<CR>
nnoremap    <Leader>b         :BuffergatorOpen<CR>
nnoremap    <Leader>o         :CtrlPFunky<CR>
nnoremap    <Leader>a         :A<CR>
nnoremap    <Leader>l         :call <SID>syntastic()<CR>
nnoremap    <Leader>e         :Errors<CR>
nnoremap    <Leader>u         :GundoToggle<CR>
nnoremap    <Leader>rt        :%s/\s\+$//e<CR>
nnoremap    <Leader><Space>   :nohlsearch<CR>
nnoremap    <Leader>t         :terminal<CR>
nnoremap    j                 gj
nnoremap    k                 gk
nnoremap    n                 nzz
nnoremap    N                 Nzz
nnoremap    *                 *zz
nnoremap    }                 }zz
nnoremap    {                 {zz
nnoremap    #                 #zz
nnoremap    g*                g*zz
nnoremap    g#                g#zz
