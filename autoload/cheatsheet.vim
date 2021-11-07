function! cheatsheet#open(coreutil)
    if executable('curl') == 0
        echoerr "The `curl` executable is not found on $PATH"
        return
    endif

    if a:coreutil
        let topic = input('Coreutil: ', '', 'shellcmd')
    else
        let topic = input('Language: ', &filetype, 'filetype')
    endif

    if len(topic) == 0
        return
    endif

    let query = substitute(input('Query: '), ' ', '+', 'g')

    if query != ''
        let query = '/' . query
    endif

    enew
    let &l:buftype = "nofile"
    let &l:filetype = (a:coreutil || query == '') ? 'sh' : topic

    execute 'read !curl -s cht.sh/' . topic . shellescape(query) . '\?T'
    silent! normal! gg=G
endfunction
