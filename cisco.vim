" copy this line into init.vim:
" autocmd BufEnter *.cisco source ~/.config/nvim/cisco.vim
set magic
" the cisco cli is case insensitive 
syntax case ignore 
" setting default for the new higlight-group
highlight link ciscoKeyword Type
highlight link ciscoComment Comment
highlight link ciscoIpv4 Float 
highlight link ciscoIpv6 Float 
" syntax definition
syntax keyword ciscoKeyword 
	    \ int[erface] tr[ansport] in[put] ssh copy vl[an] g/\%[0-9] f[astEthernet] 
	    \ name 

syntax match ciscoComment /#.*/
" match ipv4
syntax match ciscoIpv4 /\(\(25[0-5]\|2[0-4][0-9]\|1[0-9][0-9]\|[0-9][0-9]\|[0-9]\)\.\(25[0-5]\|2[0-4][0-9]\|1[0-9][0-9]\|[0-9][0-9]\|[0-9]\)\.\(25[0-5]\|2[0-4][0-9]\|1[0-9][0-9]\|[0-9][0-9]\|[0-9]\)\.\(25[0-5]\|2[0-4][0-9]\|1[0-9][0-9]\|[0-9][0-9]\|[0-9]\)\)/
" match ipv6
syntax match ciscoIpv6 /\%(\x\|\d\)\{-}\(:\|::\| \)?\%(\x\|\d\)\{-}\%(:\|::\| \)\@!/
