"======================================================================
"
" menu_help.vim - menu functions
"
" Created by skywind on 2019/12/30
" Last Modified: 2019/12/30 14:47:29
"
"======================================================================

function! MenuHelp_FormatJson()
	exec "%!python -m json.tool"
endfunc

function! MenuHelp_Gscope(scope)
	exec "GscopeFind ". a:scope . " " . fnameescape(expand('<cword>'))
endfunc

function! MenuHelp_Proxy(enable)
	let $HTTP_PROXY = (a:enable)? 'socks5://localhost:1080' : ''
	let $HTTPS_PROXY = $HTTP_PROXY
	let $ALL_PROXY = $HTTP_PROXY
endfunc

