map  <silent> <Leader>n       :NERDTreeToggle<CR>
map  <silent> <Leader>N       :NERDTreeFind<CR>
nmap        <Leader>e         <Plug>SlimeLineSend
nmap        <Leader>ee        <Plug>SlimeMotionSend
xmap        <Leader>ea        <Plug>SlimeRegionSend
nmap        s                 <Plug>(easymotion-s)
vmap        s                 <Plug>(easymotion-s)
omap        s                 <Plug>(easymotion-s)
nmap        t                 <Plug>(easymotion-tl)
vmap        t                 <Plug>(easymotion-tl)
omap        t                 <Plug>(easymotion-tl)
nmap        T                 <Plug>(easymotion-Tl)
vmap        T                 <Plug>(easymotion-Tl)
omap        T                 <Plug>(easymotion-Tl)
nmap        f                 <Plug>(easymotion-fl)
vmap        f                 <Plug>(easymotion-fl)
omap        f                 <Plug>(easymotion-fl)
nmap        F                 <Plug>(easymotion-Fl)
vmap        F                 <Plug>(easymotion-Fl)
omap        F                 <Plug>(easymotion-Fl)
nmap        ;                 <Plug>(easymotion-next)
vmap        ;                 <Plug>(easymotion-next)
omap        ;                 <Plug>(easymotion-next)
nmap        ,                 <Plug>(easymotion-prev)
omap        ,                 <Plug>(easymotion-prev)
vmap        ,                 <Plug>(easymotion-prev)
nmap        <Leader>/         <Plug>CommentaryLine
vmap        <Leader>/         <Plug>Commentary
nmap        <Leader>w         <Plug>(choosewin)
nmap<silent><Leader>,         :vertical resize 87<CR>
nmap        ˚                 [e
nmap        ∆                 ]e
vmap        ˚                 [egv
vmap        ∆                 ]egv
vmap        <Enter>           <Plug>(LiveEasyAlign)
noremap     H                 ^
noremap     L                 g_
nnoremap    Q                 <nop>
nnoremap    <Leader><Enter>   :w<CR>
nnoremap    <Leader>q         :bp\|bd #<CR>
nnoremap    <Leader>md        :MarkedOpen!<CR>
nnoremap    <Leader>gs        :Gstatus<CR>
nnoremap    <Leader>ga        :Gcommit --amend<CR>
nnoremap    <Leader>gc        :Gcommit -v -q<CR>
nnoremap    <Leader>gt        :Gcommit -v -q %:p<CR>
nnoremap    <Leader>gd        :Gdiff<CR>
nnoremap    <Leader>gr        :Gread<CR>:GitGutter<CR>
nnoremap    <Leader>gw        :Gwrite<CR><CR>:GitGutter<CR>
nnoremap    <Leader>gl        :Gitv --all<CR>
nnoremap    <Leader>gh        :Manhunt<CR>
nnoremap    <Leader>gm        :Merginal<CR>
nnoremap <silent><Leader>p    :GitFiles<CR>
nnoremap <silent><Leader>f    :Files<CR>
nnoremap    <Leader>b         :Buffers<CR>
nnoremap    <Leader>u         :MundoToggle<CR>
nnoremap    <Leader>rt        :%s/\s\+$//e<CR>
nnoremap    <Leader><Space>   :nohlsearch<CR>
nnoremap    <Leader>ciu       :split<CR>:Caniuse <c-r>=expand("<cword>")<CR><CR>
map<silent> -                 <Plug>FileBeagleOpenCurrentBufferDir
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
