let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/projects/learning-ruby/get_static
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/Documents/projects/learning-ruby/get_static
badd +156 app/assets/stylesheets/custom.scss
badd +27 app/views/layouts/_header.html.erb
badd +15 config/routes.rb
badd +14 app/controllers/users_controller.rb
badd +39 test/models/user_test.rb
badd +11 app/models/user.rb
badd +12 app/views/users/show.html.erb
badd +7 app/helpers/users_helper.rb
badd +7 app/views/shared/_error_messages.html.erb
badd +23 app/views/layouts/application.html.erb
badd +18 app/views/sessions/new.html.erb
badd +7 app/controllers/sessions_controller.rb
badd +12 app/helpers/sessions_helper.rb
badd +0 app/assets/javascripts/application.js
argglobal
silent! argdel *
$argadd ~/Documents/projects/learning-ruby/get_static
edit test/models/user_test.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 23 - ((21 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 025|
lcd ~/Documents/projects/learning-ruby/get_static
tabedit ~/Documents/projects/learning-ruby/get_static/app/assets/javascripts/application.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Documents/projects/learning-ruby/get_static
tabnext 2
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
