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
badd +12 app/controllers/static_pages_controller.rb
badd +5 app/views/static_pages/home.html.erb
badd +1 app/views/static_pages/help.html.erb
badd +16 test/controllers/static_pages_controller_test.rb
badd +5 app/views/static_pages/about.html.erb
badd +19 app/views/layouts/application.html.erb
badd +2 app/views/static_pages/contact.html.erb
badd +9 app/helpers/application_helper.rb
badd +47 Gemfile
badd +100 app/assets/stylesheets/custom.scss
badd +13 app/views/layouts/_footer.html.erb
badd +12 app/views/layouts/_header.html.erb
badd +10 config/routes.rb
badd +4 app/controllers/users_controller.rb
badd +3 app/views/users/new.html.erb
badd +39 test/models/user_test.rb
badd +10 app/models/user.rb
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
let s:l = 23 - ((22 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 025|
lcd ~/Documents/projects/learning-ruby/get_static
tabedit ~/Documents/projects/learning-ruby/get_static/app/models/user.rb
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
let s:l = 1 - ((0 * winheight(0) + 29) / 59)
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
