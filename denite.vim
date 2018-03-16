" Change file_rec command.
call denite#custom#var('file_rec', 'command',
            \ ['ag', '--follow', '-S', '--nocolor', '--nogroup', '--hidden',
            \  '--ignore', '.git',
            \  '-g', ''])

" Change mappings.
call denite#custom#map(
	      \ 'insert',
	      \ '<C-j>',
	      \ '<denite:move_to_next_line>',
	      \ 'noremap'
	      \)
	call denite#custom#map(
	      \ 'insert',
	      \ '<C-k>',
	      \ '<denite:move_to_previous_line>',
	      \ 'noremap'
          \)

" Change matchers.
call denite#custom#source(
            \ 'file_mru', 'matchers', ['matcher_fuzzy', 'matcher_project_files'])
call denite#custom#source(
            \ 'file_rec', 'matchers', ['matcher_cpsm'])

" Change sorters.
call denite#custom#source(
            \ 'file_rec', 'sorters', ['sorter_sublime'])

" Define alias
call denite#custom#alias('source', 'file_rec/git', 'file_rec')
call denite#custom#var('file_rec/git', 'command',
            \ ['git', 'ls-files', '-co', '--exclude-standard'])

" Change default prompt
call denite#custom#option('default', 'prompt', '»')

" Ag command on grep source
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts',
            \ ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Change ignore_globs
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
            \ [ '.git/', '.ropeproject/', '__pycache__/',
            \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])


" Map space to the prefix for Unite
nnoremap [denite] <Nop>
nmap <space> [denite]

nnoremap <silent> [denite]f :<C-u>Denite
            \ -auto-resize
            \ -smartcase
            \ file_rec<CR>

nnoremap <silent> [denite]b :<C-u>Denite
            \ -auto-resize
            \ -smartcase
            \ buffer<CR>
