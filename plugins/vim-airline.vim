
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#coc#enabled = 1

function! AirlineInit()
    " let g:airline_section_a = airline#section#create([])
    " let g:airline_section_b = airline#section#create_left([])
    " let g:airline_section_c = airline#section#create([])
    " let g:airline_section_x = airline#section#create([])
    " let g:airline_section_y = airline#section#create([])
    " let g:airline_section_z = airline#section#create_right([])
    " let g:airline_section_error = airline#section#create_right([])
    " let g:airline_section_gutter = airline#section#create_right([])
    let g:airline_section_warning = airline#section#create_right([])
endfunction

autocmd VimEnter * call AirlineInit()

