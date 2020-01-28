scriptencoding utf-8

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
nmap        <Leader>/         gcc
vmap        <Leader>/         gc
nmap<silent><Leader>,         :vertical resize 87<CR>
nmap        ˚                 [e
nmap        ∆                 ]e
vmap        ˚                 [egv
vmap        ∆                 ]egv
vmap        <Enter>           <Plug>(LiveEasyAlign)
nmap        gl                <Plug>(EasyAlign)
xmap        gl                <Plug>(EasyAlign)
noremap     H                 ^
noremap     L                 g_
nnoremap    Q                 <nop>
nnoremap    <Leader><Enter>   :w<CR>
nnoremap    <Leader>q         :bp\|bd #<CR>
nnoremap    <Leader>u         :MundoToggle<CR>
nnoremap    <Leader>gw        :Gwrite<CR>
nnoremap    <Leader>gs        :Gstatus<CR>
nnoremap    <Leader>gd        :Gdiff<CR>
nnoremap    <Leader>gr        :Gread<CR>
nnoremap    <Leader>gc        :Gcommit -v -q<CR>
nnoremap    <Leader>ga        :Gcommit --amend<CR>
nnoremap    <Leader>gb        :Gblame<CR>
nnoremap    <Leader>gl        :Glog<CR>
nnoremap    <Leader>gh        :SignifyHunkDiff<CR>
nnoremap    <Leader>gu        :SignifyHunkUndo<CR>
nnoremap <silent><Leader>c    :Clap<CR>
nnoremap <silent><Leader>p    :Clap gfiles<CR>
nnoremap <silent><Leader>f    :Clap files<CR>
nnoremap <silent><Leader>b    :Clap buffers<CR>
nnoremap <silent><Leader>m    :Clap marks<CR>
nnoremap <silent><Leader>w    :Clap windows<CR>
nnoremap <silent><Leader>g    :Clap grep<CR>
nnoremap <silent><Leader>r    :Clap registers<CR>
nnoremap <silent><Leader>s    :Clap tags<CR>
nnoremap <silent><Leader>S    :Vista<CR>
nnoremap <silent>!            :Clap grep ++query=<cword><CR>
nnoremap    <Leader>rt        :%s/\s\+$//e<CR>
nnoremap    <Leader><Space>   :nohlsearch<CR>
map<silent> -                 <Plug>FileBeagleOpenCurrentBufferDir
nnoremap    j                 gj
nnoremap    k                 gk
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-declaration)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
vmap <localleader>p  <Plug>(coc-format-selected)
xmap <localleader>p  <Plug>(coc-format-selected)
nmap <localleader>p  <Plug>(coc-format)
nmap <localleader>r  <Plug>(coc-rename)
nmap <localleader>a  <Plug>(coc-codeaction)
vmap <localleader>a  <Plug>(coc-codeaction-selected)
xmap <localleader>a  <Plug>(coc-codeaction-selected)
nmap <localleader>a  <Plug>(coc-codeaction-selected)
nmap <localleader>q  <Plug>(coc-fix-current)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent><Leader>l :<C-u>CocList<CR>
