let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0


function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction


function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction



"    a = {description = {'  Find File          '}, command = 'Telescope find_files'},
"    b = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
"    c = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
"    d = {description = {'  Find Word          '}, command = 'Telescope live_grep'},
"    e = {description = {'  Settings           '}, command = ':e ~/.config/nvim/lv-settings.lua'}

function! s:list_projects() abort
  let files = finddir('.git', $HOME . '/Lemonade/**2', -1)
  return map(files, "{'line': v:val, 'path':v:val}")
endfunction
"\ {_, dir -> {'line': fnamemodify(dir, ':h:s?.*Lemonade/??'), 'cmd': 'cd ' . fnamemodify(dir, ':h') . ' | nvim .'}})

        "\ {'header': ['   Lemonade projects'], 'type': function('s:list_projects'), 'indices': map(range(1, 100), { _ -> 'l' . string(v:val)})},

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \]
let g:startify_bookmarks = [
            \ { 'd': '~/Lemonade/devops' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Lemonade/dev-workflow-service',
            \ ]
