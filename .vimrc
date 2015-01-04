"
"                       __   _(_)_ __ ___  _ __ ___
"                       \ \ / / | '_ ` _ \| '__/ __|
"                        \ V /| | | | | | | | | (__
"                       (_)_/ |_|_| |_| |_|_|  \___|
"

" Setup language {{{ ==========================================================

" language en_US.UTF-8           " Solve some plugins incompatibilities

" }}}

set nocompatible             " No to the total compatibility with the ancient vi

" NEOBUNDLE {{{ ===============================================================

" NeoBundle auto-installation and setup {{{

" Auto installing NeoBundle
let iCanHazNeoBundle=1
let neobundle_readme=expand($HOME.'/.vim/bundle/neobundle.vim/README.md')
if !filereadable(neobundle_readme)
    echo "Installing NeoBundle.."
    echo ""
    silent !mkdir -p $HOME/.vim/bundle
    silent !git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
    let iCanHazNeoBundle=0
endif


" Call NeoBundle
if has('vim_starting')
    set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand($HOME.'/.vim/bundle/'))

" is better if NeoBundle rules NeoBundle (needed!)
NeoBundle 'Shougo/neobundle.vim'
" }}}

" BUNDLES (plugins administrated by NeoBundle) {{{

" Shougo's way {{{

" Vimproc to asynchronously run commands (NeoBundle, Unite)
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

" }}}

" Autocomplete {{{

"NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Valloric/YouCompleteMe'

" Note: Jedi is only for python.
NeoBundle "davidhalter/jedi-vim"

" }}}

" Backups {{{
NeoBundle 'pluginbackup.vim' " 1.0   Numbered Backups.
" }}}

" Browsers and the like {{{
NeoBundle 'scrooloose/nerdtree' " A tree explorer plugin for vim.
NeoBundle 'bufexplorer.zip' " 6.0.2 Buffer Explorer / Browser

" }}}

" Colorschemes {{{

" Dark themes
" Improved terminal version of molokai, almost identical to the GUI one
NeoBundle 'joedicastro/vim-molokai256'

NeoBundle 'tomasr/molokai'
NeoBundleLazy 'sjl/badwolf', { 'autoload' :
        \ { 'unite_sources' : 'colorscheme', }}
NeoBundleLazy 'nielsmadan/harlequin', { 'autoload' :
        \ { 'unite_sources' : 'colorscheme', }}


" Light themes
NeoBundleLazy 'vim-scripts/summerfruit256.vim', { 'autoload' :
        \ { 'unite_sources' : 'colorscheme', }}
NeoBundleLazy 'joedicastro/vim-github256', { 'autoload' :
        \ { 'unite_sources' : 'colorscheme', }}

" Make terminal themes from GUI themes
NeoBundleLazy 'godlygeek/csapprox', { 'autoload' :
        \ { 'commands' : ['CSApprox', 'CSApproxSnapshot']}}

NeoBundle 'charged-256.vim' " 1.0   256 color colorsheme to supplement dark colorschemes.
NeoBundle 'flazz/vim-colorschemes' " one colorscheme pack to rule them all!

NeoBundle 'A-soft-mellow-color-scheme' " 1.0   A soft mellow colorscheme
NeoBundle 'adam.vim' " 1.0.1 Adam's Good Color Scheme : A well colored, dark background color scheme.
NeoBundle 'Adaryn.vim' " 1.0   A Deep, Sharp color scheme
NeoBundle 'adrian.vim' " 1.0   A dark background color scheme, with light color for text comments
NeoBundle 'af.vim' " 1.1   A nice dark color scheme with milk colors
NeoBundle 'aiseered.vim' " 0.1win A color scheme with a dark red background.
NeoBundle 'altercation/vim-colors-solarized' " precision colorscheme for the vim text editor
NeoBundle 'anaxagoras/Viridian-color-scheme' " An ergonomic green chalkboard colorscheme for terminals and text editors.
NeoBundle 'aqua' " 0.1   An aqua like color scheme
NeoBundle 'AutumnLeaf' " 1.0   Practical, beautiful seasonal colors.
NeoBundle 'billw.vim' " 0.1   Black color scheme with some contrast
NeoBundle 'Black-Angus' " 1.0   This is a mainly green on black color scheme (Gui & term)
NeoBundle 'BlackBeauty' " 1.0   A beautiful (if you like dark background) color scheme with dark background
NeoBundle 'bluegreen' " 0.1   dark green and blue colorscheme
NeoBundle 'blugrine' " 2004.0 based on bluegreen colorscheme by Joao Estevao
NeoBundle 'BOG' " 0.0.1 Blue Orange Green color scheme
"NeoBundle 'bootleq/vim-color-bootleg' " Vim color scheme "bootleg" " Has problems
NeoBundle 'borland.vim' " 1.0   Classic borland IDE like Vim color scheme
NeoBundle 'brookstream' " 1.0   A dark blue/green colorscheme
NeoBundle 'Brown' " 0.1   Brown GUI color scheme.
NeoBundle 'buttercream.vim' " 1.1   Smooth and colorful yellowish theme
NeoBundle 'bw.vim' " 1.0   Black and White cterm color scheme
NeoBundle 'candy.vim' " 1.0   color scheme ( background is black )
NeoBundle 'caramel.vim' " 0.1   Low eye strain color scheme, based off of the GIMP&#039s caramel pallette for GVIM
NeoBundle 'carvedwood' " 0.1   A dark (tan/grey) color scheme for scanning Html
NeoBundle 'cazador481/ea_color' " Eddie's color scheme for gvim
NeoBundle 'charon' " 1.0   Dark colorscheme based on peppers !
NeoBundle 'chela_light' " 1.8   A light color scheme
NeoBundle 'cloudy' " 1.0   A deep blue cloudy color scheme
NeoBundle 'coffee.vim' " 1.0   a brownish colorscheme
NeoBundle 'Color-Scheme-Explorer' " 7.0.1 Easy color scheme browsing
NeoBundle 'colorer-color-scheme' " 1.0   colorer color scheme
NeoBundle 'Cool-colors' " 0.1   Colors based on inverted SciTE colors (GUI only)
NeoBundle 'corn' " 0.01  green + blue + wheat colorscheme
NeoBundle 'Cthulhian' " 1.0   dark color scheme based on oceandeep
NeoBundle 'custom' " 1.0   good color scheme
NeoBundle 'dante.vim' " 1.0   dark color scheme
NeoBundle 'darkblack.vim' " 1.0   A black background color scheme based on darkblue.
NeoBundle 'darkblue2.vim' " 0.1   A nice mixture of blue, green and cyan in a color scheme for programmers.
NeoBundle 'darkdot' " 1.0   yet another dark colorscheme
NeoBundle 'darkslategray.vim' " 1.0   Dark slate gray background, pastel colored text
NeoBundle 'DarkZen-Color-Scheme' " 2005  DarkZen color scheme for Vim
NeoBundle 'dawn' " 1     Soft colors on a light grey background (GUI only)
NeoBundle 'desert.vim' " 1.0   A dark-background color scheme inspired by my hometown of Santa Fe, New Mexico
NeoBundle 'desert256.vim' " 1.0   A slightly-modified desert theme, for 88- and 256-color xterms.
NeoBundle 'desertedocean.vim' " 0.1   Tan/blue GUI color scheme modified from Desert, akin to OceanDeep, & Zenburn
NeoBundle 'desertedocean.vim' " 0.1   Tan/blue GUI color scheme modified from Desert, akin to OceanDeep, & Zenburn
NeoBundle 'Dev-Cpp-Scheme' " 6.3   Nice, clear, gentle, professional colorscheme from Dev-C++
NeoBundle 'dusk' " 1.0   Soft colors on a dark background (GUI only)
NeoBundle 'earth.vim' " 0.1   Green base for colorscheme
NeoBundle 'edo_sea' " 1.0   A blueish color scheme with a dark background
NeoBundle 'emacs.vim' " 20010816 Emacs like colors
NeoBundle 'fnaqevan' " 0.1a  color scheme for overnight hacking
NeoBundle 'fog-colorscheme' " 1.0   A gentle colorscheme for code editing.
NeoBundle 'golden.vim' " 0.0.2 Gold based color scheme
NeoBundle 'Gothic' " 1.0   Dark background and eye-resting colors
NeoBundle 'greens' " 2007.01.29 A grey-on-black colorscheme
NeoBundle 'greyblue.vim' " 1.0   soft grey and blue color scheme
NeoBundle 'HHCS' " 1.1   Six low contrast dark colorschemes for happy hacking.
NeoBundle 'HHCS_D' " 1.3   Seven dark colorschemes for happy hacking.
NeoBundle 'Impact' " 0.1   Nice dark colorscheme for term/cterm only
NeoBundle 'jhdark' " 0.9   A dark colorscheme for gui and console
NeoBundle 'jhlight.vim' " 1.0   A colorscheme with a light grey background
NeoBundle 'less.vim' " 1.1   Less is More - A minimal color scheme
NeoBundle 'lingodirector.vim' " 1.0   original Director Lingo script colors
NeoBundle 'manxome-foes-colorscheme' " R1    a pleasant scheme for long vimming sessions
NeoBundle 'mars.vim' " 0.1   Dark red color scheme
NeoBundle 'matrix.vim' " 1.0   MATRIX like colorscheme
NeoBundle 'midnight.vim' " 1.0   Dark blue, low contrast colorscheme.
NeoBundle 'midnight2.vim' " 0.8   Dark blue, low contrast colorscheme.
NeoBundle 'mod_tcsoft.vim' " 1.0   modified version of tcsoft.vim-color-scheme
NeoBundle 'monyxie/vim-color-sbling' " A spring-themed Vim colorscheme.
NeoBundle 'motus.vim' " 0.1   Dark color scheme based on the popular torte setup. Good for LCD and consoles
NeoBundle 'Mud' " 1.0   Dark brown colorscheme with beutiful highlighing
NeoBundle 'Mud' " 1.0   Dark brown colorscheme with beutiful highlighing
NeoBundle 'NEdit' " 1.0   A color scheme mimicking the way NEdit highlights C++ code
NeoBundle 'nightshade.vim' " 1.0   Bright colors on a black background with a 2nd colorization script for printing
NeoBundle 'Nightshimmer' " 1.0   a darkblue scheme with shimmering colors
NeoBundle 'nightwish.vim' " 1.0   dark colorscheme
NeoBundle 'noah/vim256-color' " A collection of 256-color colorschemes for vim.
NeoBundle 'northsky' " 0.3   The dark soft colorsheme
NeoBundle 'oceandeep' " 1.2.5 dark colorscheme, pleasant, mainly blue and blueish-green
NeoBundle 'oceanlight' " 0.1   Pale blue and green winter colors
NeoBundle 'Olive' " 0.18  Dark olive background and green-orange colors colorscheme
NeoBundle 'peaksea' " n/a   Refined color, contains both gui and cterm256 for dark and light background
NeoBundle 'Peppers' " 1.0   The ultimate dark color scheme...
NeoBundle 'Pleasant-colorscheme' " 1.0   A bright and pleasant colorscheme for heavy programming
NeoBundle 'Professional-colorscheme-for-Vim' " 1.0   At last, a professional colorscheme for Vim...
NeoBundle 'putty' " 0.1   A color scheme that resembles one of Putty
NeoBundle 'rainbow.zip' " 1.0   color scheme package
NeoBundle 'Red-Black' " 1     A red and black color scheme
NeoBundle 'Relaxed-Green' " 0.1   Relaxed green color scheme for vim and gvim.
NeoBundle 'revolutions.vim' " 1.0   Matrix Revolutions colorscheme (GUI only)
NeoBundle 'robinhood.vim' " 0.1   A greenish color scheme
NeoBundle 'sand' " 0.5   Light sand-like background color scheme with miscellaneous dark grains
NeoBundle 'scite-colors' " 0.1   Scite-like colors (GUI only)
NeoBundle 'sean.vim' " 0.1   dark color scheme
NeoBundle 'sf.vim' " 1.1   vim.sf.net colorscheme (GUI only)
NeoBundle 'sienna' " 1.6   Color scheme with harmonic colors easy to distinguish (dark and light styles).
NeoBundle 'simpleandfriendly.vim' " 1.0   A simple color scheme - with some eye-friendly colors.
NeoBundle 'softblue' " 1.0   A blue color scheme, low contrast
NeoBundle 'sramekdesign/vim-lizatom-color-scheme' " Dark color syntax theme for Vim.
NeoBundle 'TaQua' " 1.0   baby colors for use with aqua themes
NeoBundle 'tcsoft.vim' " 1.0   nice light color scheme
NeoBundle 'telamon/vim-color-github' " Github Theme for vim
NeoBundle 'telstar.vim' " 1     outer space color scheme for gvim
NeoBundle 'The-Vim-Gardener' " 1.1   Dark and colorful forrest khaki theme works with 256 color xterms
NeoBundle 'Tibet' " 0.1   A Colorscheme Inspired in Tibetan coloring
NeoBundle 'tidy' " 1.0   Color scheme 'tidy' based on PerlTidy's colors.
NeoBundle 'tomatosoup.vim' " 1.0   A humorous colorscheme based on tomato soup and grilled cheese sandwiches!
NeoBundle 'toothpik.vim' " 0.1   black on grey color scheme - gvim only - easy on the eyes
NeoBundle 'Transparent' " 1.0   Nice colorscheme for both, console and gui versions of vim
NeoBundle 'ubloh/ubloh-color-scheme' " A dark vim color scheme for Ruby.
NeoBundle 'vim-scripts/csv-color' " syntax highlight for CSV files
NeoBundle 'vim-scripts/fisa-color-scheme' " soft color scheme for terminals with 256 colors
NeoBundle 'vim-scripts/Railscasts-Theme-GUIand256color' " A railscasts color theme that works in 256color terminals as well as gui
NeoBundle 'vim-scripts/vanzan_color' " A dark blue (nearly black) color scheme
NeoBundle 'vim_colors' " 1.0   4 Vim Themes I use for programming (GUI only)
NeoBundle 'Visual-Cpp' " 1.0   A color scheme resembling the MS Visual C++ IDE
NeoBundle 'White-Dust' " 1     A light color scheme for GUI
NeoBundle 'wintersday.vim' " 1.0   Dark color scheme
NeoBundle 'wood.vim' " 0.9   Wood cabin color scheme
NeoBundle 'xemacs-colorscheme' " 0.1   Vim with xemacs-like colors
NeoBundle 'xian.vim' " 1.0   kind'a pastel colorscheme (dark bg, GUI only)
NeoBundle 'xterm16.vim' " 1.1   An adjustable contrast color scheme for GUI and 8, 16 or 256 color terminals.
NeoBundle 'Zen-Color-Scheme' " 2005  Zen color scheme for Vim
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'calmar256-lightdark.vim' " 0.98  256 color-scheme for a capable terminal

" }}}

" Commenting {{{

NeoBundle 'tpope/vim-commentary'

" }}}

" Languages {{{

" On Demand support for a lot of languages
NeoBundle 'sheerun/vim-polyglot'

" Bash {{{

NeoBundle 'vim-scripts/bash-support.vim' " BASH IDE -- Write and run BASH-scripts using menus and hotkeys.

" }}}

" C {{{

NeoBundle 'vim-scripts/c.vim'

" }}}

" CSV {{{

NeoBundle 'vim-scripts/csv.vim' " A Filetype plugin for csv files.

" }}}

" Go {{{

" Temporarily commented out until I get around to setting up go.
" NeoBundle "fatih/vim-go"

" }}}

" Haskell {{{

NeoBundle 'vim-scripts/haskell.vim' " Syntax file for Haskell
NeoBundle 'vim-scripts/haskellFold' " Provide a foldexpr function which give nice folding for haskell files.
NeoBundle 'vim-scripts/indenthaskell.vim' " Haskell indent file
NeoBundle 'aniederl/haskellmode-vim' " git mirror of http://code.haskell.org/haskellmode-vim

" }}}

" HTML {{{

NeoBundle 'amirh/HTML-AutoCloseTag'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'tpope/vim-haml'

" }}}

" Lisp {{{

NeoBundle 'vim-scripts/slimv.vim'

" }}}

" PHP {{{

NeoBundle 'arnaud-lb/vim-php-namespace'

" }}}

" Python {{{

NeoBundle "Yggdroot/indentLine"
NeoBundleLazy 'klen/python-mode', {'autoload': {'filetypes': ['python']}}
NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'vim-scripts/python_match.vim' " Extend the % motion and define g%, [%, and ]% motions for Python files
NeoBundle 'vim-scripts/python_open_module' " open the python module file below the cursor when coding python

" }}}

" Ruby {{{

NeoBundle "tpope/vim-rails"
NeoBundle "tpope/vim-rake"
" NeoBundle "tpope/vim-projectionist"
NeoBundle "thoughtbot/vim-rspec"

" }}}

" Text {{{

NeoBundle 'txt.vim' " 1.0   Universal syntax script for all txt docs, logs and other types

" }}}

" }}}

" Menuing {{{

" Unite. The interface to rule almost everything

NeoBundle 'Shougo/unite.vim'

" Unite sources
NeoBundleLazy 'Shougo/unite-outline', {'autoload':{'unite_sources':'outline'}}
NeoBundleLazy 'Shougo/unite-session', {'autoload':{'unite_sources':'session',
            \ 'commands' : ['UniteSessionSave', 'UniteSessionLoad']}}
NeoBundleLazy 'tsukkee/unite-help', {'autoload':{'unite_sources':'help'}}
NeoBundleLazy 'ujihisa/unite-colorscheme', {'autoload':{'unite_sources':
            \ 'colorscheme'}}
NeoBundleLazy 'ujihisa/unite-locate', {'autoload':{'unite_sources':'locate'}}
NeoBundleLazy 'thinca/vim-unite-history', { 'autoload' : { 'unite_sources' :
            \ ['history/command', 'history/search']}}
NeoBundleLazy 'osyo-manga/unite-filetype', { 'autoload' : {'unite_sources' :
            \ 'filetype', }}
NeoBundleLazy 'osyo-manga/unite-quickfix', {'autoload':{'unite_sources':
            \ ['quickfix', 'location_list']}}
NeoBundleLazy 'osyo-manga/unite-fold', {'autoload':{'unite_sources':'fold'}}
NeoBundleLazy 'tacroe/unite-mark', {'autoload':{'unite_sources':'mark'}}

" }}}

" MRU {{{

NeoBundle 'Shougo/neomru.vim'

" }}}

" Multiple Cursors {{{

NeoBundle 'terryma/vim-multiple-cursors'

" }}}

" Outlining {{{

NeoBundle 'vim-scripts/VOoM' " Outliner

" }}}

" Searching {{{

" Ack {{{
NeoBundle 'ack.vim' " 0.3   Plugin for the Perl module / CLI script 'ack'
" }}}

" Ag {{{

NeoBundle 'vim-scripts/ag.vim' " Use ag, the_silver_searcher (better than ack, which is better than grep)

" }}}

" Ctrl-P {{{
NeoBundleLazy 'ctrlpvim/ctrlp.vim'
" }}}

" Misc. {{{

NeoBundle 'ivyl/vim-bling' " Flash search results

" }}}

" Multiple Search {{{
NeoBundle 'vim-scripts/MultipleSearch2.vim' " Improve Multiple search
" }}}


" }}}

" Snippets {{{

" Powerful and advanced Snippets tool

NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'

" }}}

" Source Control {{{

NeoBundle 'tpope/vim-fugitive'
NeoBundleLazy 'gregsexton/gitv', {'depends':['tpope/vim-fugitive'],
            \ 'autoload':{'commands':'Gitv'}}
NeoBundle 'airblade/vim-gitgutter'

" }}}

" Start page {{{
"
NeoBundle 'mhinz/vim-startify' " Change the start page

" }}}

" Status Line {{{

NeoBundle 'bling/vim-airline'

" }}}

" Syntax {{{

NeoBundle 'scrooloose/syntastic'

" Syntax Files {{{
"NeoBundle 'vim-scripts/Arduino-syntax-file' " Syntax file for Arduino .PDE files
NeoBundle 'vim-scripts/brainfuck-syntax' " brainfuck syntax support
NeoBundle 'ChuckM/bsp-syntax' " Syntax file for VIM to colorize Basic Stamp (BS2) source
"NeoBundle 'vim-scripts/doctest-syntax' " Highlighting for Python doctest files
"NeoBundle 'vim-scripts/fish-syntax' " fish syntax based on sh
NeoBundle 'autowitch/hive.vim' " Hive syntax highlighting and stuff
"NeoBundle 'groovy.vim' " 0.1   syntax file for the groovy programming language
"NeoBundle 'puppetlabs/puppet-syntax-vim' " Puppet language syntax highlighting for Vim
"NeoBundle 'rest.vim' " 0.1   A reStructuredText syntax mode
"NeoBundle 'vim-scripts/JavaScript-syntax' " Better JavaScrirpt syntax support
"NeoBundle 'vim-scripts/Markdown-syntax' " Syntax file for Markdown text-to-HTML language
"NeoBundle 'vim-scripts/XQuery-syntax' " XQuery syntax
NeoBundle 'pig.vim' " 0.5   Pig language syntax highlighting
NeoBundle 'inform.vim' " 0.5   Indenting for Inform

" }}}

" }}}

" Tagging {{{

NeoBundle 'majutsushi/tagbar' " Vim plugin that displays tags in a window, ordered by class etc.

" }}}

" Undo {{{
NeoBundleLazy 'sjl/gundo.vim', { 'autoload' : {'commands': 'GundoToggle'}}
" }}}

" Wiki {{{
NeoBundle 'vimwiki/vimwiki' " Personal Wiki for Vim
" }}}

" Windowing {{{
NeoBundle 'vim-scripts/obvious-resize' " Resize Vim windows in an obvious way.
NeoBundle 'zhaocai/GoldenView.Vim' "Always have a nice view for vim split windows
NeoBundle 't9md/vim-choosewin' " land to window you choose like tmux's 'display-pane'

" }}}

" END BUNDLES }}}

" Auto install the plugins {{{

" First-time plugins installation
if iCanHazNeoBundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :NeoBundleInstall
endif

" Check if all of the plugins are already installed, in other case ask if we
" want to install them (useful to add plugins in the .vimrc)
NeoBundleCheck

" }}}

filetype plugin indent on      " Indent and plugins by filetype

" END NEOBUNDLE }}}

" Plugins setup {{{ ===========================================================

" Ack {{{
let g:ackprg = 'ag --nogroup --nocolor --column'
" }}}

" Airline {{{

set noshowmode

let g:airline_theme='powerlineish'
let g:airline_enable_branch=1
let g:airline_powerline_fonts=1
let g:airline_detect_whitespace = 1
let g:airline#extensions#hunks#non_zero_only = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_enable_syntastic = 1

" }}}

" Choosewin {{{

" if you want to use overlay feature
let g:choosewin_overlay_enable          = 1

" overlay font broke on mutibyte buffer?
let g:choosewin_overlay_clear_multibyte = 1
nmap  <leader>P  <Plug>(choosewin)

" }}}

" Commentary {{{

nmap <Leader>c <Plug>CommentaryLine
xmap <Leader>c <Plug>Commentary

augroup plugin_commentary
    au!
    au FileType python setlocal commentstring=#%s
    au FileType htmldjango setlocal commentstring={#\ %s\ #}
    au FileType puppet setlocal commentstring=#\ %s
augroup END

" }}}

" CtrlP {{{

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|tox)$'
let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
let g:ctrlp_use_caching = 0
cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
noremap <leader>b :CtrlPBuffer<CR>
"let g:ctrlp_map = ',e'
let g:ctrlp_open_new_file = 'r'

" }}}

" Jedi {{{

let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>u"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "0"
let g:jedi#completions_command = "<C-Space>"

" }}}

" GoldenView {{{

let g:goldenview__enable_default_mapping = 0

" }}}

" Indent Lines {{{

map <silent> <Leader>L :IndentLinesToggle<CR>
let g:indentLine_enabled = 0
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239

" }}}

" Obvious Resize {{{

" Mapping for more intuitive window resizing
noremap <silent> <C-Up> :ObviousResizeUp<CR>
noremap <silent> <C-Down> :ObviousResizeDown<CR>
noremap <silent> <C-Left> :ObviousResizeLeft<CR>
noremap <silent> <C-Right> :ObviousResizeRight<CR>

" }}}

" NERDTree {{{

let NERDTreeIgnore = ['\.pyc$', '\~$', '\.swp$', '\.pyo$', '\.class$', '\.o$', '\.out$', '\.obj$', '\.rbc$', '\.rbo$', '\.zip$', '\.gz$', '\.bz$', '\.rar$', '^core$', '\.so\.[0-9]*$', '\.jpg$', '\.png$', '\.gif$', '\.mp[34]$', '\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let NERDTreeChDirMode=2
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 20

" }}}

" Startify {{{

let g:startify_session_dir = '~/.vim/session'
let g:startify_list_order = ['files', 'dir', 'bookmarks', 'sessions']
let g:startify_files_number = 25
let g:startify_session_persistence = 1
let g:startify_change_to_vcs_root = 1
let g:startify_restore_position = 1
let g:startify_custom_header =
    \ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']
let g:startify_custom_footer = [
            \ '',
            \ '   __      ___            ______ _  _   ',
            \ '   \ \    / (_)           |____ | || |  ',
            \ '    \ \  / / _ _ __ ___       / | || |_ ',
            \ '     \ \/ / | | ''_ ` _ \     / /|__   _|',
            \ '      \  /  | | | | | | |   / /    | |  ',
            \ '       \/   |_|_| |_| |_|  /_/ (_) |_|  ',
            \ ]

let g:startify_skiplist = [
        \ 'COMMIT_EDITMSG',
        \ $VIMRUNTIME .'/doc',
        \ 'bundle/.*/doc',
        \ '\.DS_Store'
        \ ]


" }}}

" Syntastic {{{

let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

let g:syntastic_phpcs_conf = "--standard=/home/gold/dev/dg/phpcs/CodeSniffer/Standards/dg/ruleset.xml"
let g:syntastic_python_checkers=['python', 'pylint']

" }}}

" Tagbar {{{

let g:tagbar_autofocus = 1

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [  'p:package', 'i:imports:1', 'c:constants', 'v:variables',
        \ 't:types',  'n:interfaces', 'w:fields', 'e:embedded', 'm:methods',
        \ 'r:constructor', 'f:functions' ],
    \ 'sro' : '.',
    \ 'kind2scope' : { 't' : 'ctype', 'n' : 'ntype' },
    \ 'scope2kind' : { 'ctype' : 't', 'ntype' : 'n' },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }




" }}}

" UtilSnips {{{

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" }}}

" VimWiki {{{

let g:vimwiki_list = [{'path': '~/vimwiki',
                     \ 'path_html': '~/vimwiki/html',
                     \ 'auto_export': 1,
                     \ 'template_path': '~/vimwiki/templates',
                     \ 'template_default': 'template',
                     \ 'template_ext': '.html',
                     \ 'css_name': 'css/style.css'}]
" }}}

" YouCompleteMe {{{

" Make YouCompleteMe and UtilSnips play nice together.
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
" this mapping Enter key to <C-y> to chose the current highlight item
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" }}}

" }}}

" Functions {{{ ===============================================================

" Make a dir if no exists {{{

function! MakeDirIfNoExists(path)
    if !isdirectory(expand(a:path))
        call mkdir(expand(a:path), "p")
    endif
endfunction

" }}}

" Strip trailing whitespace {{{

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    "let @/=_s
    call cursor(l, c)
endfunction

" }}}

" Toggle Line numbering {{{

function! ToggleRelativeAbsoluteNumber()
  if !&number && !&relativenumber
      set number
      set norelativenumber
  elseif &number && !&relativenumber
      set nonumber
      set relativenumber
  elseif !&number && &relativenumber
      set number
      set relativenumber
  elseif &number && &relativenumber
      set nonumber
      set norelativenumber
  endif
endfunction

" }}}

" }}}

" VIM Setup {{{ ===============================================================

" <Leader> & <LocalLeader> mapping {{{

let mapleader='\'

" Using space a leader is weird to set up.
nnoremap <SPACE> <Nop>
noremap <SPACE> <Nop>
sunmap <SPACE>
let maplocalleader= ' '

" }}}

" Basic options {{{

scriptencoding utf-8
set encoding=utf-8              " setup the encoding to UTF-8
set fileencoding=utf-8
set ls=2                        " status line always visible
set go-=T                       " hide the toolbar
set go-=m                       " hide the menu
set go+=rRlLbh                  " show all the scrollbars
set go-=rRlLbh                  " hide all the scrollbars
set visualbell                  " turn on the visual bell
set cursorline                  " highlight the line under the cursor
set fillchars+=vert:│           " better looking for windows separator
set ttyfast                     " better screen redraw
set title                       " set the terminal title to the current file
set showcmd                     " shows partial commands
set hidden                      " hide the inactive buffers
set ruler                       " sets a permanent rule
set lazyredraw                  " only redraws if it is needed
set autoread                    " update a open file edited outside of Vim
set ttimeoutlen=0               " toggle between modes almost instantly
set backspace=indent,eol,start  " defines the backspace key behavior
set modeline

" }}}

" Backups {{{

set backup
set noswapfile
set backupdir=$HOME/.vim/tmp/backup/
set undodir=$HOME/.vim/tmp/undo/
set directory=$HOME/.vim/tmp/swap/
set viminfo+=n$HOME/.vim/tmp/viminfo

" make this dirs if no exists previously
silent! call MakeDirIfNoExists(&undodir)
silent! call MakeDirIfNoExists(&backupdir)
silent! call MakeDirIfNoExists(&directory)

" }}}

" Colorscheme {{{

set background=dark            " set a dark background
set t_Co=256                   " 256 colors for the terminal
highlight Folded ctermbg=DarkBlue ctermfg=Yellow
" colorscheme xoria256
colorscheme calmar256-dark
hi MatchParen ctermfg=blue ctermbg=black
highlight ColorColumn ctermbg=darkblue guibg=gray10

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" }}}

" Completion {{{

set complete=.,w,b,u,k,s,t,i

" }}}

" Conceal {{{
set concealcursor=nvc
" }}}

" Dictionary {{{

set dictionary=/usr/share/dict/words
set spellfile=~/.vim/custom-dictionary.utf-8.add,~/.vim-local-dictionary.utf-8.add
nnoremap zG 2zg

" }}}

" Fast window moves {{{

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" }}}

" History and permanent undo levels {{{

set history=5000
set undofile
set undoreload=5000
set undolevels=5000

" }}}

" List Mode {{{

nmap <Leader>l :set list!<CR>
set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶

" }}}

" Line Numbering {{{

set relativenumber
set number

" }}}

" Mouse {{{

set mouse=a

" }}}

" New splits {{{

nnoremap <Leader>v <C-w>v
nnoremap <Leader>h <C-w>s

" }}}

" Syntax {{{

syntax enable                  " enable the syntax highlight
syntax sync fromstart
set synmaxcol=500   " Do not syntax highlight more than 500 columns.

" }}}

" Tabs, space and wrapping, scrolling {{{

set expandtab                  " spaces instead of tabs
set tabstop=4                  " a tab = four spaces
set shiftwidth=4               " number of spaces for auto-indent
set softtabstop=4              " a soft-tab of four spaces
set autoindent                 " set on the auto-indent
set smarttab
set nowrap
set nowrap sidescroll=8
set sidescrolloff=8
set scrollopt=hor,ver,jump
set scrolloff=5

" set formatoptions=qrn1ct
set textwidth=0
set colorcolumn=81,133

" }}}

" Tags {{{
set tags="./tags,~/.vim/tags/
" }}}

" Timeouts {{{

set notimeout
set ttimeout
set ttimeoutlen=10

" }}}

" Searching {{{

set incsearch                   " incremental searching
set showmatch                   " show pairs match
set hlsearch                    " highlight search results
set smartcase                   " smart case ignore
set smartindent                 " Turn on autoindenting of blocks
set ignorecase                  " ignore case letters

" }}}

" Wildmenu {{{

set wildmenu                        " Command line autocompletion
set wildmode=list:longest,full      " Shows all the options

set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.bak,*.?~,*.??~,*.???~,*.~      " Backup files
set wildignore+=*.luac                           " Lua byte code
set wildignore+=*.jar                            " java archives
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.stats                          " Pylint stats

set dictionary+=/usr/share/dict/words
set thesaurus+=/home/gold/.vim/mthesaur.txt

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

set wildignore+=*.luac                           " Lua byte code

set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code

set wildignore+=*.orig                           " Merge resolution files

" Clojure/Leiningen
set wildignore+=classes
set wildignore+=lib

" }}}

" }}}

" Key Mapping {{{

" F Keys {{{
"
map <F3> :GundoToggle<CR>
map <F4> :NERDTreeToggle<CR>
map <F5> :TagbarToggle<CR>
nmap <silent> <unique> <F7> :BufExplorer<CR>
nmap <silent> <unique> <C-F7> :BufExplorerHorizontalSplit<CR>
nmap <silent> <unique> <S-F7> :BufExplorerVerticalSplit<CR>

" }}}

" Make the Arrow Keys useful {{{

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap <s-up> :BufExplorer<CR>
nnoremap <s-down> <nop>
nnoremap <s-left> :NERDTreeToggle<CR>
nnoremap <s-right> :TagbarToggle<CR>
inoremap <s-up> :BufExplorer<CR>
inoremap <s-down> <nop>
inoremap <s-left> :NERDTreeToggle<CR>
inoremap <s-right> :TagbarToggle<CR>

" }}}

" Vmap for maintain Visual Mode after shifting > and < {{{
vmap < <gv
vmap > >gv

" }}}

" Buffer nav {{{

noremap <leader>j :bn<CR>
noremap <leader>k :bp<CR>

" }}}

" Close buffer {{{

noremap <leader>x :bd<CR>

" }}}

" sudo write {{{

" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" (it will prompt for sudo password when writing)
cmap w!! %!sudo tee > /dev/null %

" }}}

" Instant access to interesting files {{{

nmap <silent> <leader>V :next $MYVIMRC<CR>

" }}}

" Make shift-insert work like in Xterm {{{

map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" }}}

" Quitting typos {{{

" no one is really happy until you have this shortcuts
" cab W! w!
" cab Q! q!
" cab Wq wq
" cab Wa wa
" cab wQ wq
" cab WQ wq
" cab W w
" cab Q q

" }}}

" Line Numbering  {{{

nnoremap <silent><Leader>n :call ToggleRelativeAbsoluteNumber()<CR>

" }}}

" Syntax check {{{

noremap <leader>S :SyntasticCheck<CR>

" }}}

" Spelling {{{

" turn on the spell checking and set the Spanish language
nmap <Leader>ss :setlocal spell spelllang=es<CR>
" turn on the spell checking and set the English language
nmap <Leader>se :setlocal spell spelllang=en<CR>
" turn off the spell checking
nmap <Leader>so :setlocal nospell <CR>
" jump to the next bad spell word
nmap <Leader>sn ]s
" suggest words
nmap <Leader>sp z=
" jump to the next bad spell word and suggests a correct one
nmap <Leader>sc ]sz=
" add word to the dictionary
nmap <Leader>sa zg

" }}}

" Paste Mode {{{

nmap <Leader>p :set paste!<CR>

" }}}

" }}}

" File types {{{

" Avro IDL files {{{

au BufRead,BufNewFile *.avdl,*.avsc setlocal filetype=avro-idl

" }}}

" JSON {{{ -------------------------------------------------------------------

" autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.json set ft=json

augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END

" }}}

" Hive files {{{

au BufRead,BufWrite *.hive set filetype=hive
au BufRead,BufWrite *.hql set filetype=hive

" }}}

" Inform7 {{{

au BufNewFile,BufRead *.ni      setf inform7

" }}}

" LUA {{{

au BufRead,BufNewFile rc.lua setlocal foldmethod=marker

" }}}

" MARKDOWN {{{

" markdown filetype file
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
autocmd FileType markdown NeoBundleSource vim-markdown
autocmd FileType markdown NeoBundleSource vim-markdown-extra-preview

" }}}

" Pig {{{

augroup filetypedetect
    au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
    au BufNewFile,BufRead Makefile* set filetype=make syntax=make
augroup END

" }}}

" Python {{{

autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4
    \ formatoptions+=croq softtabstop=4 smartindent
    \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" }}}

" Tasks {{{

autocmd BufNewFile,BufRead todo.txt,*.task,*.tasks  setfiletype task

" }}}


" }}}

" Menus {{{

" Unite Menu Settings {{{

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_mru,file_rec,file_rec/async,grep,locate',
            \ 'ignore_pattern', join(['\.git/', 'tmp/', 'bundle/'], '\|'))

let g:unite_source_history_yank_enable = 1
let g:unite_enable_start_insert = 0
let g:unite_enable_short_source_mes = 0
let g:unite_force_overwrite_statusline = 0
let g:unite_prompt = '>>> '
let g:unite_marked_icon = '✓'
" let g:unite_candidate_icon = '∘'
let g:unite_winheight = 15
let g:unite_update_time = 200
let g:unite_split_rule = 'botright'
let g:unite_data_directory = $HOME.'/.vim/tmp/unite'
let g:unite_source_buffer_time_format = '(%d-%m-%Y %H:%M:%S) '
let g:unite_source_file_mru_time_format = '(%d-%m-%Y %H:%M:%S) '
let g:unite_source_directory_mru_time_format = '(%d-%m-%Y %H:%M:%S) '

if executable('ag')
    let g:unite_source_grep_command='ag'
    let g:unite_source_grep_default_opts='--nocolor --nogroup -a -S'
    let g:unite_source_grep_recursive_opt=''
    let g:unite_source_grep_search_word_highlight = 1
elseif executable('ack')
    let g:unite_source_grep_command='ack'
    let g:unite_source_grep_default_opts='--no-group --no-color'
    let g:unite_source_grep_recursive_opt=''
    let g:unite_source_grep_search_word_highlight = 1
endif

" make this dir if no exists previously
silent! call MakeDirIfNoExists(expand(unite_data_directory)."/session/")

let g:unite_source_menu_menus = {}

" menu prefix key (for all Unite menus) {{{

nnoremap [menu] <Nop>
nmap <LocalLeader> [menu]

" }}}

" menus menu
nnoremap <silent>[menu]u :Unite -silent -winheight=20 menu<CR>

" }}}

" Basic stuff {{{

" Files
nnoremap <silent><LocalLeader>m :Unite -silent file_mru<CR>

" Buffers
nnoremap <silent><LocalLeader>b :Unite -silent buffer<CR>

" Tabs
nnoremap <silent><LocalLeader>B :Unite -silent tab<CR>

" Buffer Search
nnoremap <silent><LocalLeader>f :Unite -silent -no-split -start-insert -auto-preview
            \ line<CR>
nnoremap <silent>[menu]8 :UniteWithCursorWord -silent -no-split -auto-preview
            \ line<CR>

" yankring
nnoremap <silent><LocalLeader>i :Unite -silent history/yank<CR>

" grep
nnoremap <silent><LocalLeader>a :Unite -silent -no-quit grep<CR>

" help
nnoremap <silent> g<C-h> :UniteWithCursorWord -silent help<CR>

" tasks
nnoremap <silent><LocalLeader>; :Unite -silent -toggle
            \ grep:%::FIXME\|TODO\|NOTE\|XXX\|COMBAK\|@todo<CR>

" outlines (also ctags)
nnoremap <silent><LocalLeader>t :Unite -silent -vertical -winwidth=40
            \ -direction=topleft -toggle outline<CR>

" }}}

" neobundle menu {{{

let g:unite_source_menu_menus.neobundle = {
    \ 'description' : '      plugins administration with neobundle
        \                 ⌘ \n',
    \}
let g:unite_source_menu_menus.neobundle.command_candidates = [
    \['▷ neobundle',
        \'Unite neobundle'],
    \['▷ neobundle log',
        \'Unite neobundle/log'],
    \['▷ neobundle lazy',
        \'Unite neobundle/lazy'],
    \['▷ neobundle update',
        \'Unite neobundle/update'],
    \['▷ neobundle search',
        \'Unite neobundle/search'],
    \['▷ neobundle install',
        \'Unite neobundle/install'],
    \['▷ neobundle check',
        \'Unite -no-empty output:NeoBundleCheck'],
    \['▷ neobundle docs',
        \'Unite output:NeoBundleDocs'],
    \['▷ neobundle clean',
        \'NeoBundleClean'],
    \['▷ neobundle list',
        \'Unite output:NeoBundleList'],
    \['▷ neobundle direct edit',
        \'NeoBundleDirectEdit'],
    \]
nnoremap <silent>[menu]n :Unite -silent -start-insert menu:neobundle<CR>

" }}}

" spelling menu {{{

let g:unite_source_menu_menus.spelling = {
    \ 'description' : '       spell checking
        \                                        ⌘ \s',
    \}
let g:unite_source_menu_menus.spelling.command_candidates = [
    \['▷ spell checking in Spanish                                  ⌘ \ss',
        \'setlocal spell spelllang=es'],
    \['▷ spell checking in English                                  ⌘ \se',
        \'setlocal spell spelllang=en'],
    \['▷ turn off spell checking                                    ⌘ \so',
        \'setlocal nospell'],
    \['▷ jumps to next bad spell word and show suggestions          ⌘ \sc',
        \'normal ,sc'],
    \['▷ jumps to next bad spell word                               ⌘ \sn',
        \'normal ,sn'],
    \['▷ suggestions                                                ⌘ \sp',
        \'normal ,sp'],
    \['▷ add word to dictionary                                     ⌘ ,sa',
        \'normal ,sa'],
    \]
nnoremap <silent>[menu]s :Unite -silent menu:spelling<CR>

" }}}

" }}}

" Startup {{{ =================================================================

autocmd VimEnter *
            \ if !argc() |
            \   Startify |
            \   NERDTree |
            \   execute "normal \<c-w>w" |
            \ endif
" }}}

" Events {{{ ==================================================================

" Save when losing focus {{{

au FocusLost * :silent! wall

" }}}

" Resize splits when the window is resized {{{

au VimResized * :wincmd =

" }}}

" Make sure Vim returns to the same line when you reopen a file. {{{
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
 augroup END

" }}}

" Reload .vimrc on change {{{

autocmd! BufWritePost vimrc source %

" }}}

" }}}

" Other Customizations {{{ ====================================================

" Load external customizations {{{

let s:vimcustomfile = $HOME.'/.vim/local'

if filereadable(s:vimcustomfile)
    exec 'source '.s:vimcustomfile
endif

" }}}

" vim:foldmethod=marker
