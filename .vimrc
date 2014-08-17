"
"                       __   _(_)_ __ ___  _ __ ___
"                       \ \ / / | '_ ` _ \| '__/ __|
"                        \ V /| | | | | | | | | (__
"                       (_)_/ |_|_| |_| |_|_|  \___|
"
" Author: joe di castro <joe@joedicastro.com>
" Source: http://github.com/joedicastro/dotfiles/tree/master/vim
"
" This file is under a lot of stress, it changes frequently, so it's better if
" you watch the DVCS commits to stay in the loop.

" Setup language {{{ ==========================================================

" language en_US.UTF-8           " Solve some plugins incompatibilities

" }}}

" NEOBUNDLE {{{ ===============================================================

set nocompatible             " No to the total compatibility with the ancient vi

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

" File explorer (needed where ranger is not available)
NeoBundleLazy 'Shougo/vimfiler', {'autoload' : { 'commands' : ['VimFiler']}}

" Junk files
NeoBundleLazy 'Shougo/junkfile.vim', {'autoload':{'commands':'JunkfileOpen',
            \ 'unite_sources':['junkfile','junkfile/new']}}
NeoBundle 'Toggle' " 0.2   allows you to toggle bool (true/false) and other words with a shortcut

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

" }}}

" DCVS {{{
"
" Admin Git
NeoBundle 'tpope/vim-fugitive'
" Show git repository changes in the current file
NeoBundle 'airblade/vim-gitgutter'
" Git viewer
NeoBundleLazy 'gregsexton/gitv', {'depends':['tpope/vim-fugitive'],
            \ 'autoload':{'commands':'Gitv'}}

" }}}

" Markdown {{{

" Markdown Syntax
NeoBundleLazy 'joedicastro/vim-markdown'
" Makes a Markdown Extra preview into the browser
NeoBundleLazy 'joedicastro/vim-markdown-extra-preview'

" }}}

" Linux tools {{{

" A diff tool for directories
NeoBundleLazy 'joedicastro/DirDiff.vim', { 'autoload': { 'commands' : 'DirDiff'}}
" Hexadecimal editor
NeoBundleLazy 'vim-scripts/hexman.vim', { 'autoload' :
            \ { 'mappings' : [['ni', '<Plug>HexManager']]}}

" }}}

" Python {{{

" Autocompletion
NeoBundle 'Shougo/neocomplete.vim'
" A Python plugin
NeoBundleLazy 'klen/python-mode', {'autoload': {'filetypes': ['python']}}
" Admin virtualenvs
NeoBundle 'jmcantrell/vim-virtualenv'
" Show indent lines
NeoBundleLazy 'Yggdroot/indentLine', {'autoload': {'filetypes': ['python']}}
" Show reports from coverage.py
NeoBundleLazy 'alfredodeza/coveragepy.vim', {'autoload': {'filetypes': ['python']}}

" }}}

" Code Snippets {{{

" Powerful and advanced Snippets tool
NeoBundle 'SirVer/ultisnips'

" }}}

" Syntax {{{

NeoBundleLazy 'vim-scripts/JSON.vim', {'autoload': {'filetypes': ['json']}}
NeoBundleLazy 'vim-scripts/po.vim--gray', {'autoload': {'filetypes': ['po']}}
NeoBundleLazy 'joedicastro/vim-pentadactyl', {
            \ 'autoload': {'filetypes': ['pentadactyl']}}
NeoBundle 'scrooloose/syntastic'

" }}}

" Open external links {{{

" Open a url into the browser or another files with an external app
NeoBundle 'vim-scripts/utl.vim'

" }}}

" Text edition {{{

" Autocompletion of (, [, {, ', ", ...
"NeoBundle 'kana/vim-smartinput'
" NeoBundle 'delimitMate.vim'
" Smart and fast date changer
NeoBundle 'tpope/vim-speeddating'
" to surround vim objects with a pair of identical chars
NeoBundle 'tpope/vim-surround'
" extend repetitions by the 'dot' key
NeoBundle 'tpope/vim-repeat'
" toggle comments
NeoBundle 'tpope/vim-commentary'
" smart digraphs insertion
NeoBundle 'Rykka/easydigraph.vim'
" browse the vim undo tree
NeoBundleLazy 'sjl/gundo.vim', { 'autoload' : {'commands': 'GundoToggle'}}
" to insert lorem ipsum blocks
NeoBundleLazy 'vim-scripts/loremipsum', { 'autoload' :
            \ { 'commands' : 'Loremipsum'}}
" reveals all the character info, Unicode included
NeoBundle 'tpope/vim-characterize'
" transpose lines and text blocks
NeoBundleLazy 'salsifis/vim-transpose', { 'autoload' :
            \ { 'commands' : 'Transpose'}}
" marks admin
NeoBundle 'kshenoy/vim-signature'
" text-objects
NeoBundle 'kana/vim-textobj-entire' " ae, ie
NeoBundle 'kana/vim-textobj-indent' " ai, ii, aI, iI
NeoBundle 'kana/vim-textobj-lastpat' " a/, i/, a?, i?
NeoBundle 'kana/vim-textobj-line' " al, il
NeoBundle 'kana/vim-textobj-underscore' " a_, i_
NeoBundle 'kana/vim-textobj-user'
" multiple cursors
NeoBundle 'terryma/vim-multiple-cursors'
" translate text with google translator
NeoBundle 'maksimr/vim-translator'
"NeoBundle 'ynkdir/vim-achievement'

" }}}

" HTML/CSS {{{

" A smart and powerful Color Management tool. Needs to be loaded to be able
" to use the mappings
NeoBundleLazy 'Rykka/colorv.vim', {'autoload' : {
            \ 'commands' : [
                             \ 'ColorV', 'ColorVView', 'ColorVPreview',
                             \ 'ColorVPicker', 'ColorVEdit', 'ColorVEditAll',
                             \ 'ColorVInsert', 'ColorVList', 'ColorVName',
                             \ 'ColorVScheme', 'ColorVSchemeFav',
                             \ 'ColorVSchemeNew', 'ColorVTurn2'],
            \ }}

NeoBundleLazy 'othree/html5.vim', {'autoload':
            \ {'filetypes': ['html', 'xhttml', 'css']}}

NeoBundleLazy 'mattn/emmet-vim', {'autoload':
            \ {'filetypes': ['html', 'xhttml', 'css', 'xml', 'xls', 'markdown']}}
" }}}

" GUI {{{

" A better looking status line
NeoBundle 'bling/vim-airline'
" Zooms a window
NeoBundleLazy 'vim-scripts/zoomwintab.vim', {'autoload' :
            \{'commands' : 'ZoomWinTabToggle'}}
" easily window resizing
NeoBundle 'jimsei/winresizer'

" }}}

" Tmux {{{

" Easily interacts with Tmux from Vim
NeoBundle 'benmills/vimux'
" Tmux config file syntax
NeoBundleLazy 'vimez/vim-tmux', { 'autoload' : { 'filetypes' : 'conf'}}

" }}}

" API Web {{{

NeoBundle 'mattn/webapi-vim'

" }}}

NeoBundle 'pluginbackup.vim' " 1.0   Numbered Backups.
NeoBundle 'vimwiki/vimwiki' " Personal Wiki for Vim
"NeoBundle 'EvanDotPro/nerdtree-chmod' " A plugin for NERD Tree that allows for chmod'ing files.
"NeoBundle 'EvanDotPro/nerdtree-symlink' " A plugin for NERD Tree that allows for creating symlinks.
NeoBundle 'jskywalk/nerdtree_search' " A nerdtree plugin that adds grep search capabilities
NeoBundle 'vim-scripts/nerdtree-execute' " Execute OS file/dir handler from NERDTree
"NeoBundle 'vim-scripts/nerdtree-ack' " NERDtree + ack.vim
NeoBundle 'bufexplorer.zip' " 6.0.2 Buffer Explorer / Browser
NeoBundle 'vim-scripts/MultipleSearch2.vim' " Improve Multiple search
NeoBundle 'vim-scripts/camelcasemotion' " Motion through CamelCaseWords and underscore_notation.
NeoBundle 'vim-scripts/obvious-resize' " Resize Vim windows in an obvious way.
"NeoBundle 'vim-scripts/Source-Explorer-srcexpl.vim' " A Source code Explorer based on tags works like context window in Source Insight
NeoBundle 'majutsushi/tagbar' " Vim plugin that displays tags in a window, ordered by class etc.
NeoBundle 'txt.vim' " 1.0   Universal syntax script for all txt docs, logs and other types
"NeoBundle 'vim-scripts/sort-python-imports' " this script allows you to sort python imports alphabetically
"NeoBundle 'vim-scripts/python_showpydoc' " Show document python within gvim command line~
NeoBundle 'vim-scripts/python_open_module' " open the python module file below the cursor when coding python
NeoBundle 'vim-scripts/python_match.vim' " Extend the % motion and define g%, [%, and ]% motions for Python files
NeoBundle 'scrooloose/nerdtree' " A tree explorer plugin for vim.
"NeoBundle 'Lokaltog/vim-powerline' " The ultimate vim statusline utility. DEPRECATED in favor of Lokaltog/powerline.
NeoBundle 'ack.vim' " 0.3   Plugin for the Perl module / CLI script 'ack'
"NeoBundle 'all-colors-pack' " 1.0   all colors pack 1.0 There are 223 of them included
"NeoBundle 'trinity.vim' " 1.3   Build the trinity of srcexpl, taglist, NERD_tree to be a good IDE
" NeoBundle 'wesleyche/SrcExpl' " Source Explorer!
NeoBundle 'autowitch/hive.vim' " Hive syntax highlighting and stuff
NeoBundle 'pig.vim' " 0.5   Pig language syntax highlighting
NeoBundle 'dln/avro-vim' " Vim utilities to work w/Avro files
NeoBundle 'inform.vim' " 0.5   Indenting for Inform
NeoBundle 'Archive' " 1.0   Open archives in vim as a tree or flat list, w/ nesting support.
NeoBundle 'calmar256-lightdark.vim' " 0.98  256 color-scheme for a capable terminal
"NeoBundle 'AlejandroEspinoza/vim-colorschemes' " vim colorschemes

" Haskell
NeoBundle 'vim-scripts/haskell.vim' " Syntax file for Haskell
NeoBundle 'vim-scripts/haskellFold' " Provide a foldexpr function which give nice folding for haskell files.
NeoBundle 'vim-scripts/indenthaskell.vim' " Haskell indent file
"NeoBundle 'vim-scripts/vim-addon-haskell' " run cabal within vim using vim-addon-actions + some goodies
NeoBundle 'aniederl/haskellmode-vim' " git mirror of http://code.haskell.org/haskellmode-vim


" Syntax files
NeoBundle 'ChuckM/bsp-syntax' " Syntax file for VIM to colorize Basic Stamp (BS2) source
NeoBundle 'groovy.vim' " 0.1   syntax file for the groovy programming language
NeoBundle 'puppetlabs/puppet-syntax-vim' " Puppet language syntax highlighting for Vim
NeoBundle 'rest.vim' " 0.1   A reStructuredText syntax mode
NeoBundle 'vim-scripts/Arduino-syntax-file' " Syntax file for Arduino .PDE files
NeoBundle 'vim-scripts/brainfuck-syntax' " brainfuck syntax support
NeoBundle 'vim-scripts/doctest-syntax' " Highlighting for Python doctest files
NeoBundle 'vim-scripts/fish-syntax' " fish syntax based on sh
NeoBundle 'vim-scripts/JavaScript-syntax' " Better JavaScrirpt syntax support
NeoBundle 'vim-scripts/Markdown-syntax' " Syntax file for Markdown text-to-HTML language
NeoBundle 'vim-scripts/XQuery-syntax' " XQuery syntax

" Python
" NeoBundle 'vim-scripts/python.vim--Vasiliev' " Enhanced version of the python syntax highlighting script
NeoBundle 'vim-scripts/python_coverage.vim' " syntax highlighting for python coverage files
" NeoBundle 'vim-scripts/python_ifold' " Improved version of python_fold. Uses folding expression for python code.
NeoBundle 'vim-scripts/python_import.vim' " automatically remove unused imports and clean up the rest
NeoBundle 'vim-scripts/python_match.vim' " Extend the % motion and define g%, [%, and ]% motions for Python files
NeoBundle 'vim-scripts/python_open_module' " open the python module file below the cursor when coding python
"NeoBundle 'pythonhelper' " 0.7   Displays Python class, method or function the cursor is in on the status line

" Bash
NeoBundle 'vim-scripts/bash-support.vim' " BASH IDE -- Write and run BASH-scripts using menus and hotkeys.

NeoBundle 'mhinz/vim-startify' " Change the start page
NeoBundle 'ivyl/vim-bling' " Flash search results
NeoBundle 'vim-scripts/VOoM' " Outliner
" NeoBundle 'vim-scripts/easytags.vim' " Automated tag file generation and syntax highlighting of tags in Vim
NeoBundle 'AutoTag' " 1.0   Updates entries in a tags file automatically when saving
NeoBundle 'szw/vim-tags'
NeoBundle 'vim-scripts/vim-misc' " Miscellaneous auto-load Vim scripts

NeoBundle 'slimv.vim' " 0.1   Superior Lisp Interaction Mode for Vim ('SLIME for Vim')
" NeoBundle 'vim-scripts/autotags' " vim plugin for easy ctags and cscope handling in a separate directory
NeoBundle 'vim-scripts/ag.vim' " Use ag, the_silver_searcher (better than ack, which is better than grep)

" NeoBundle 'auto' " 1.6   Coding automation  for c/c++/ruby/python/shell/perl/...

NeoBundle 'vim-scripts/csv.vim' " A Filetype plugin for csv files.

NeoBundle 'tpope/vim-dispatch' " dispatch.vim: asynchronous build and test dispatcher
NeoBundle 'Shougo/vimproc.vim' " Interactive command execution in Vim.
NeoBundle 'Shougo/vimshell.vim' " Powerful shell implemented by vim.
NeoBundle 'greyblake/vim-preview' " Vim plugin for previewing markup files(markdown,rdoc,textile,html)
NeoBundle 'zhaocai/GoldenView.Vim' "Always have a nice view for vim split windows
" NeoBundle 'q335r49/textabyss' " Pan, zoom, and map an infinite 2D text plane (for vim)
NeoBundle 'vim-scripts/vim-howdoi' " Howdoi VIM Plugin
NeoBundle 'marczych/vim-lose' " Lose - like :find, but betterized


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

" VIM Setup {{{ ===============================================================

" <Leader> & <LocalLeader> mapping {{{

let mapleader='\'
let maplocalleader= ','

" }}}

" Basic options {{{

scriptencoding utf-8
set encoding=utf-8              " setup the encoding to UTF-8
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
"set virtualedit=all             " to edit where there is no actual character
set modeline

" }}}

" Searching {{{

set incsearch                   " incremental searching
set showmatch                   " show pairs match
set hlsearch                    " highlight search results
set smartcase                   " smart case ignore
set smartindent                 " Turn on autoindenting of blocks
set ignorecase                  " ignore case letters

" }}}

" History and permanent undo levels {{{

set history=5000
set undofile
set undoreload=5000
set undolevels=5000

" }}}

" Make a dir if no exists {{{

function! MakeDirIfNoExists(path)
    if !isdirectory(expand(a:path))
        call mkdir(expand(a:path), "p")
    endif
endfunction

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

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem,*.pyc,*.pyo

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" }}}

" Tabs, space and wrapping {{{

set expandtab                  " spaces instead of tabs
set tabstop=4                  " a tab = four spaces
set shiftwidth=4               " number of spaces for auto-indent
set softtabstop=4              " a soft-tab of four spaces
set autoindent                 " set on the auto-indent
set relativenumber
set number
set smarttab

" set formatoptions=qrn1ct
set textwidth=0
set colorcolumn=81,133

function! ToggleWrap()
    let s:nowrap_cc_bg = [22, '#005f00']
    redir => s:curr_cc_hi
    silent hi ColorColumn
    redir END
    let s:curr_cc_ctermbg = matchstr(s:curr_cc_hi, 'ctermbg=\zs.\{-}\s\ze\1')
    let s:curr_cc_guibg = matchstr(s:curr_cc_hi, 'guibg=\zs.\{-}\_$\ze\1')
    if s:curr_cc_ctermbg != s:nowrap_cc_bg[0]
        let g:curr_cc_ctermbg = s:curr_cc_ctermbg
    endif
    if s:curr_cc_guibg != s:nowrap_cc_bg[1]
        let g:curr_cc_guibg = s:curr_cc_guibg
    endif
    if &textwidth == 80
        set textwidth=0
        exec 'hi ColorColumn ctermbg='.s:nowrap_cc_bg[0].
                    \' guibg='.s:nowrap_cc_bg[1]
    elseif &textwidth == 0
        set textwidth=80
        exec 'hi ColorColumn ctermbg='.g:curr_cc_ctermbg.
                    \' guibg='.g:curr_cc_guibg
    endif
endfunction

nmap <silent><Leader>ew :call ToggleWrap()<CR>

" }}}

" Ok, a vim for men, get off the cursor keys {{{

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" }}}

" Colorscheme {{{

syntax enable                  " enable the syntax highlight
set background=dark            " set a dark background
set t_Co=256                   " 256 colors for the terminal
" if has('gui_running')
"     colorscheme molokai
" else
"     colorscheme molokai256
" endif

" }}}

" Font {{{

set guifont=Dejavu\ Sans\ Mono\ for\ Powerline\ 11

" }}}

" Resize the divisions if the Vim window size changes {{{

au VimResized * exe "normal! \<c-w>="

" }}}

" New windows {{{

nnoremap <Leader>v <C-w>v
nnoremap <Leader>h <C-w>s

" }}}

" Fast window moves {{{

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" }}}

" Fast window & buffer close and kill {{{

nnoremap <Leader>k <C-w>c
nnoremap <silent><Leader>K :bd<CR>

" }}}

" Toggle line numbers {{{

nnoremap <silent><Leader>l :call ToggleRelativeAbsoluteNumber()<CR>
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

" Show hidden chars {{{

nmap <Leader>eh :set list!<CR>
set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶

" }}}

" Folding {{{

set foldmethod=marker

" Toggle folding

nnoremap \ za
vnoremap \ za

" }}}

" Cut/Paste {{{

" to/from the clipboard
map <Leader>y "*y
map <Leader>p "*p

" toggle paste mode
map <Leader>P :set invpaste<CR>

" }}}

" Autoload configuration when this file changes ($MYVIMRC) {{{

autocmd! BufWritePost vimrc source %

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

" Save as root {{{

cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>

" }}}

" Quick saving {{{

nmap <silent> <Leader>w :update<CR>

" }}}

" Delete trailing whitespaces {{{

nmap <silent><Leader>et :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" }}}

" Use Ranger as a file explorer {{{

fun! RangerChooser()
    exec "silent !ranger --choosefile=/tmp/chosenfile " . expand("%:p:h")
    if filereadable('/tmp/chosenfile')
        exec 'edit ' . system('cat /tmp/chosenfile')
        call system('rm /tmp/chosenfile')
    endif
    redraw!
endfun
map <Leader>x :call RangerChooser()<CR>
" }}}

" Toggle the Quickfix window {{{

function! s:QuickfixToggle()
    for i in range(1, winnr('$'))
        let bnum = winbufnr(i)
        if getbufvar(bnum, '&buftype') == 'quickfix'
            cclose
            lclose
            return
        endif
    endfor
    copen
endfunction
command! ToggleQuickfix call <SID>QuickfixToggle()

nnoremap <silent> <Leader>q :ToggleQuickfix<CR>

" }}}

" Text statistics {{{

" get the total of lines, words, chars and bytes (and for the current position)
map <Leader>es g<C-G>

" get the word frequency in the text
function! WordFrequency() range
  let all = split(join(getline(a:firstline, a:lastline)), '\A\+')
  let frequencies = {}
  for word in all
    let frequencies[word] = get(frequencies, word, 0) + 1
  endfor
  let lst = []
  for [key,value] in items(frequencies)
    call add(lst, value."\t".key."\n")
  endfor
  call sort(lst)
  echo join(lst)
endfunction
command! -range=% WordFrequency <line1>,<line2>call WordFrequency()
map <Leader>ef :Unite output:WordFrequency<CR>

" }}}

" Count lines of code {{{

function! LinesOfCode()
    echo system('cloc --quiet '.bufname("%"))
endfunction

"}}}

" Toggle the search results highlighting {{{

map <silent><Leader>eq :set invhlsearch<CR>

" }}}

" Move between Vim and Tmux windows {{{

if exists('$TMUX')
  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    let previous_winnr = winnr()
    execute "wincmd " . a:wincmd
    if previous_winnr == winnr()
      " The sleep and & gives time to get back to vim so tmux's focus tracking
      " can kick in and send us our ^[[O
      execute "silent !sh -c 'sleep 0.01; tmux select-pane -" . a:tmuxdir . "' &"
      redraw!
    endif
  endfunction
  let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te
  nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<CR>
  nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<CR>
  nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<CR>
  nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<CR>
else
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif

" }}}

" Quick exiting without save {{{

nnoremap <Leader>`` :qa!<CR>

" }}}

" Execution permissions by default to shebang (#!) files {{{

augroup shebang_chmod
  autocmd!
  autocmd BufNewFile  * let b:brand_new_file = 1
  autocmd BufWritePost * unlet! b:brand_new_file
  autocmd BufWritePre *
        \ if exists('b:brand_new_file') |
        \   if getline(1) =~ '^#!' |
        \     let b:chmod_post = '+x' |
        \   endif |
        \ endif
  autocmd BufWritePost,FileWritePost *
        \ if exists('b:chmod_post') && executable('chmod') |
        \   silent! execute '!chmod '.b:chmod_post.' "<afile>"' |
        \   unlet b:chmod_post |
        \ endif
augroup END

" }}}

" Load matchit by default {{{

if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

" }}}

" Make the Y behavior similar to D & C {{{

nnoremap Y y$

" }}}

" Strip trailing whitespace
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
" autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Toggle opening/closing the location list (syntastic errors)

let g:location_list_is_open = 0

function! LocationListToggle()
    if g:location_list_is_open
        lclose
        let g:location_list_is_open = 0
        execute g:location_list_return_to_window . "wincmd w"
    else
        let g:location_list_return_to_window = winnr()
        lopen
        let g:location_list_is_open = 1
    endif
endfunction

nnoremap <C-F6> :call LocationListToggle()<CR>


" Instant access to .vimrc
nmap <silent> ,V :next $MYVIMRC<CR>


" Page down with space
nnoremap <SPACE> <PAGEDOWN>
nnoremap <C-SPACE> <PAGEUP>

map <F3> :GundoToggle<CR>
map <F5> :TagbarToggle<CR>
map <F4> :NERDTreeToggle<CR>
"map <S-F4> :Project<CR>
"map <C-F6> :new +ConqueTerm\ bash<CR>

" Mapping for more intuitive window resizing
noremap <silent> <C-Up> :ObviousResizeUp<CR>
noremap <silent> <C-Down> :ObviousResizeDown<CR>
noremap <silent> <C-Left> :ObviousResizeLeft<CR>
noremap <silent> <C-Right> :ObviousResizeRight<CR>

" Buffer explorer
nmap <silent> <unique> <F7> :BufExplorer<CR>
nmap <silent> <unique> <C-F7> :BufExplorerHorizontalSplit<CR>
nmap <silent> <unique> <S-F7> :BufExplorerVerticalSplit<CR>

" Snipmate

"ino <silent> <f2> <c-r>=TriggerSnippet()<cr>
"snor <silent> <f2> <esc>i<right><c-r>=TriggerSnippet()<cr>

" Syntastic

map <silent> <F6> :lw<CR>
map <silent> <S-F6> :lcl<CR>

" Project

"map <S-F7> <Plug>ToggleProject

" Scroll Colors

"map <silent> <S-F6> :NEXTCOLOR<CR>
"map <silent> <S-F5> :PREVCOLOR<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Editor Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax sync fromstart
:syn sync minlines=5000
set scrolloff=5
set nowrap
set nowrap sidescroll=8
set sidescrolloff=8
set mouse=a
set scrollopt=hor,ver,jump

" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" (it will prompt for sudo password when writing)
cmap w!! %!sudo tee > /dev/null %

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 256 Color stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256

" END VIM SETUP }}}

" PLUGINS Setup {{{ ===========================================================

" Airline {{{

set noshowmode

let g:airline_theme='powerlineish'
let g:airline_enable_branch=1
let g:airline_powerline_fonts=1
let g:airline_detect_whitespace = 1
let g:airline#extensions#hunks#non_zero_only = 1

" }}}

" ColorV {{{

let g:colorv_cache_file=$HOME.'/.vim/tmp/vim_colorv_cache'
let g:colorv_cache_fav=$HOME.'/.vim/tmp/vim_colorv_cache_fav'

" }}}

" Commentary {{{ -------------------------------------------------------------

nmap <Leader>c <Plug>CommentaryLine
xmap <Leader>c <Plug>Commentary

augroup plugin_commentary
    au!
    au FileType python setlocal commentstring=#%s
    au FileType htmldjango setlocal commentstring={#\ %s\ #}
    au FileType puppet setlocal commentstring=#\ %s
augroup END

" }}}

" easydigraph {{{

let g:EasyDigraph_nmap = '<Leader>dd'

" }}}

" Fugitive {{{

nnoremap <Leader>gn :Unite output:echo\ system("git\ init")<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>go :Gread<CR>
nnoremap <Leader>gR :Gremove<CR>
nnoremap <Leader>gm :Gmove<Space>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gB :Gbrowse<CR>
nnoremap <Leader>gp :Git! push<CR>
nnoremap <Leader>gP :Git! pull<CR>
nnoremap <Leader>gi :Git!<Space>
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>gE :Gedit<Space>
nnoremap <Leader>gl :exe "silent Glog <Bar> Unite -no-quit
            \ quickfix"<CR>:redraw!<CR>
nnoremap <Leader>gL :exe "silent Glog -- <Bar> Unite -no-quit
            \ quickfix"<CR>:redraw!<CR>
nnoremap <Leader>gt :!tig<CR>:redraw!<CR>
nnoremap <Leader>gg :exe 'silent Ggrep -i '.input("Pattern: ")<Bar>Unite
            \ quickfix -no-quit<CR>
nnoremap <Leader>ggm :exe 'silent Glog --grep='.input("Pattern: ").' <Bar>
            \Unite -no-quit quickfix'<CR>
nnoremap <Leader>ggt :exe 'silent Glog -S='.input("Pattern: ").' <Bar>
            \Unite -no-quit quickfix'<CR>

nnoremap <Leader>ggc :silent! Ggrep -i<Space>

" for the diffmode
noremap <Leader>du :diffupdate<CR>

if !exists(":Gdiffoff")
    command Gdiffoff diffoff | q | Gedit
endif
noremap <Leader>dq :Gdiffoff<CR>
" }}}

" Gitv {{{

nnoremap <silent> <leader>gv :Gitv --all<CR>
nnoremap <silent> <leader>gV :Gitv! --all<CR>
vnoremap <silent> <leader>gV :Gitv! --all<CR>

let g:Gitv_OpenHorizontal = 'auto'
let g:Gitv_WipeAllOnClose = 1
let g:Gitv_DoNotMapCtrlKey = 1
" let g:Gitv_WrapLines = 1

autocmd FileType git set nofoldenable

" }}}

" Google Translator {{{

let g:goog_user_conf = {'langpair': 'es|en', 'v_key': 'T'}

" }}}

" Gundo {{{ ------------------------------------------------------------------

nnoremap <Leader>u :GundoToggle<CR>

let g:gundo_preview_bottom = 1

" }}}

" HexManager {{{

map <S-F5> <Plug>HexManager<CR>

" }}}

" indentLine {{{

map <silent> <Leader>L :IndentLinesToggle<CR>
let g:indentLine_enabled = 0
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239

" }}}

" Neocomplete {{{

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_refresh_always = 1
let g:neocomplete#max_list = 30
let g:neocomplete#min_keyword_length = 1
let g:neocomplete#sources#syntax#min_keyword_length = 1
let g:neocomplete#data_directory = $HOME.'/.vim/tmp/neocomplete'

" For cursor moving in insert mode(Not recommended)
" inoremap <expr><c-h>  neocomplete#close_popup() . "\<Left>"
" inoremap <expr><c-l> neocomplete#close_popup() . "\<Right>"
" inoremap <expr><c-k>    neocomplete#close_popup() . "\<Up>"
" inoremap <expr><c-h>  neocomplete#close_popup() . "\<Down>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" }}}

" Po.vim {{{ -----------------------------------------------------------------

let g:po_translator = "joe di castro <joe@joedicastro.com>"

" }}}

" PythonMode {{{ -------------------------------------------------------------

let g:pymode_breakpoint_key = '<Leader>B'

let g:pymode_lint_checker = 'pylint,pep8,mccabe,pep257'
let g:pymode_lint_ignore = ''
let g:pymode_lint_config = $HOME.'/dotfiles/pylint/pylint.rc'
let g:pymode_virtualenv = 0

let g:pymode_rope = 1
let g:pymode_rope_goto_def_newwin = 'new'
let g:pymode_rope_guess_project = 0
let g:pymode_rope_vim_completion = 1
let g:pymode_rope_always_show_complete_menu = 1

" }}}

" Syntastic {{{

"let g:syntastic_python_pylint_exe = "pylint2"

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol  = '⚡'
let g:syntastic_style_warning_symbol  = '⚡'
let g:syntastic_phpcs_conf = "--standard=/home/gold/dev/dg/phpcs/CodeSniffer/Standards/dg/ruleset.xml"
"let g:syntastic_python_checker = 'pylint'

" }}}

" Unite {{{

" files
nnoremap <silent><Leader>o :Unite -silent -start-insert file<CR>
nnoremap <silent><Leader>O :Unite -silent -start-insert file_rec/async<CR>
nnoremap <silent><Leader>m :Unite -silent file_mru<CR>
" buffers
nnoremap <silent><Leader>b :Unite -silent buffer<CR>
" tabs
nnoremap <silent><Leader>B :Unite -silent tab<CR>
" buffer search
nnoremap <silent><Leader>f :Unite -silent -no-split -start-insert -auto-preview
            \ line<CR>
nnoremap <silent>[menu]8 :UniteWithCursorWord -silent -no-split -auto-preview
            \ line<CR>
" yankring
nnoremap <silent><Leader>i :Unite -silent history/yank<CR>
" grep
nnoremap <silent><Leader>a :Unite -silent -no-quit grep<CR>
" help
nnoremap <silent> g<C-h> :UniteWithCursorWord -silent help<CR>
" tasks
nnoremap <silent><Leader>; :Unite -silent -toggle
            \ grep:%::FIXME\|TODO\|NOTE\|XXX\|COMBAK\|@todo<CR>
" outlines (also ctags)
nnoremap <silent><Leader>t :Unite -silent -vertical -winwidth=40
            \ -direction=topleft -toggle outline<CR>
" junk files
  nnoremap <silent><Leader>d :Unite -silent junkfile/new junkfile<CR>

" menus {{{
let g:unite_source_menu_menus = {}

" menu prefix key (for all Unite menus) {{{
nnoremap [menu] <Nop>
nmap <LocalLeader> [menu]
" }}}

" menus menu
nnoremap <silent>[menu]u :Unite -silent -winheight=20 menu<CR>

" files and dirs menu {{{
let g:unite_source_menu_menus.files = {
    \ 'description' : '          files & dirs
        \                                          ⌘ ,o',
    \}
let g:unite_source_menu_menus.files.command_candidates = [
    \['▷ open file                                                  ⌘ ,o',
        \'Unite -start-insert file'],
    \['▷ open more recently used files                              ⌘ ,m',
        \'Unite file_mru'],
    \['▷ open file with recursive search                            ⌘ ,O',
        \'Unite -start-insert file_rec/async'],
    \['▷ edit new file',
        \'Unite file/new'],
    \['▷ search directory',
        \'Unite directory'],
    \['▷ search recently used directories',
        \'Unite directory_mru'],
    \['▷ search directory with recursive search',
        \'Unite directory_rec/async'],
    \['▷ make new directory',
        \'Unite directory/new'],
    \['▷ change working directory',
        \'Unite -default-action=lcd directory'],
    \['▷ know current working directory',
        \'Unite output:pwd'],
    \['▷ junk files                                                 ⌘ ,d',
        \'Unite junkfile/new junkfile'],
    \['▷ save as root                                               ⌘ :w!!',
        \'exe "write !sudo tee % >/dev/null"'],
    \['▷ quick save                                                 ⌘ ,w',
        \'normal ,w'],
    \['▷ open ranger                                                ⌘ ,x',
        \'call RangerChooser()'],
    \['▷ open vimfiler                                              ⌘ ,X',
        \'VimFiler'],
    \]
nnoremap <silent>[menu]o :Unite -silent -winheight=17 -start-insert
            \ menu:files<CR>
" }}}

" file searching menu {{{
let g:unite_source_menu_menus.grep = {
    \ 'description' : '           search files
        \                                          ⌘ ,a',
    \}
let g:unite_source_menu_menus.grep.command_candidates = [
    \['▷ grep (ag → ack → grep)                                     ⌘ ,a',
        \'Unite -no-quit grep'],
    \['▷ find',
        \'Unite find'],
    \['▷ locate',
        \'Unite -start-insert locate'],
    \['▷ vimgrep (very slow)',
        \'Unite vimgrep'],
    \]
nnoremap <silent>[menu]a :Unite -silent menu:grep<CR>
" }}}

" buffers, tabs & windows menu {{{
let g:unite_source_menu_menus.navigation = {
    \ 'description' : '     navigate by buffers, tabs & windows
        \                   ⌘ ,b',
    \}
let g:unite_source_menu_menus.navigation.command_candidates = [
    \['▷ buffers                                                    ⌘ ,b',
        \'Unite buffer'],
    \['▷ tabs                                                       ⌘ ,B',
        \'Unite tab'],
    \['▷ windows',
        \'Unite window'],
    \['▷ location list',
        \'Unite location_list'],
    \['▷ quickfix',
        \'Unite quickfix'],
    \['▷ resize windows                                             ⌘ C-C C-W',
        \'WinResizerStartResize'],
    \['▷ new vertical window                                        ⌘ ,v',
        \'vsplit'],
    \['▷ new horizontal window                                      ⌘ ,h',
        \'split'],
    \['▷ close current window                                       ⌘ ,k',
        \'close'],
    \['▷ toggle quickfix window                                     ⌘ ,q',
        \'normal ,q'],
    \['▷ zoom                                                       ⌘ ,z',
        \'ZoomWinTabToggle'],
    \['▷ delete buffer                                              ⌘ ,K',
        \'bd'],
    \]
nnoremap <silent>[menu]b :Unite -silent menu:navigation<CR>
" }}}

" buffer internal searching menu {{{
let g:unite_source_menu_menus.searching = {
    \ 'description' : '      searchs inside the current buffer
        \                     ⌘ ,f',
    \}
let g:unite_source_menu_menus.searching.command_candidates = [
    \['▷ search line                                                ⌘ ,f',
        \'Unite -auto-preview -start-insert line'],
    \['▷ search word under the cursor                               ⌘ ,8',
        \'UniteWithCursorWord -no-split -auto-preview line'],
    \['▷ search outlines & tags (ctags)                             ⌘ ,t',
        \'Unite -vertical -winwidth=40 -direction=topleft -toggle outline'],
    \['▷ search marks',
        \'Unite -auto-preview mark'],
    \['▷ search folds',
        \'Unite -vertical -winwidth=30 -auto-highlight fold'],
    \['▷ search changes',
        \'Unite change'],
    \['▷ search jumps',
        \'Unite jump'],
    \['▷ search undos',
        \'Unite undo'],
    \['▷ search tasks                                               ⌘ ,;',
        \'Unite -toggle grep:%::FIXME|TODO|NOTE|XXX|COMBAK|@todo'],
    \]
nnoremap <silent>[menu]f :Unite -silent menu:searching<CR>
" }}}

" yanks, registers & history menu {{{
let g:unite_source_menu_menus.registers = {
    \ 'description' : '      yanks, registers & history
        \                            ⌘ ,i',
    \}
let g:unite_source_menu_menus.registers.command_candidates = [
    \['▷ yanks                                                      ⌘ ,i',
        \'Unite history/yank'],
    \['▷ commands       (history)                                   ⌘ q:',
        \'Unite history/command'],
    \['▷ searches       (history)                                   ⌘ q/',
        \'Unite history/search'],
    \['▷ registers',
        \'Unite register'],
    \['▷ messages',
        \'Unite output:messages'],
    \['▷ undo tree      (gundo)                                     ⌘ ,u',
        \'GundoToggle'],
    \]
nnoremap <silent>[menu]i :Unite -silent menu:registers<CR>
" }}}

" spelling menu {{{
let g:unite_source_menu_menus.spelling = {
    \ 'description' : '       spell checking
        \                                        ⌘ ,s',
    \}
let g:unite_source_menu_menus.spelling.command_candidates = [
    \['▷ spell checking in Spanish                                  ⌘ ,ss',
        \'setlocal spell spelllang=es'],
    \['▷ spell checking in English                                  ⌘ ,se',
        \'setlocal spell spelllang=en'],
    \['▷ turn off spell checking                                    ⌘ ,so',
        \'setlocal nospell'],
    \['▷ jumps to next bad spell word and show suggestions          ⌘ ,sc',
        \'normal ,sc'],
    \['▷ jumps to next bad spell word                               ⌘ ,sn',
        \'normal ,sn'],
    \['▷ suggestions                                                ⌘ ,sp',
        \'normal ,sp'],
    \['▷ add word to dictionary                                     ⌘ ,sa',
        \'normal ,sa'],
    \]
nnoremap <silent>[menu]s :Unite -silent menu:spelling<CR>
" }}}

" text edition menu {{{
let g:unite_source_menu_menus.text = {
    \ 'description' : '           text edition
        \                                          ⌘ ,e',
    \}
let g:unite_source_menu_menus.text.command_candidates = [
    \['▷ toggle search results highlight                            ⌘ ,eq',
        \'set invhlsearch'],
    \['▷ toggle line numbers                                        ⌘ ,l',
        \'call ToggleRelativeAbsoluteNumber()'],
    \['▷ toggle wrapping                                            ⌘ ,ew',
        \'call ToggleWrap()'],
    \['▷ show hidden chars                                          ⌘ ,eh',
        \'set list!'],
    \['▷ toggle fold                                                ⌘ /',
        \'normal za'],
    \['▷ open all folds                                             ⌘ zR',
        \'normal zR'],
    \['▷ close all folds                                            ⌘ zM',
        \'normal zM'],
    \['▷ copy to the clipboard                                      ⌘ ,y',
        \'normal ,y'],
    \['▷ paste from the clipboard                                   ⌘ ,p',
        \'normal ,p'],
    \['▷ toggle paste mode                                          ⌘ ,P',
        \'normal ,P'],
    \['▷ remove trailing whitespaces                                ⌘ ,et',
        \'normal ,et'],
    \['▷ text statistics                                            ⌘ ,es',
        \'Unite output:normal\ ,es -no-cursor-line'],
    \['▷ show word frequency                                        ⌘ ,ef',
        \'Unite output:WordFrequency'],
    \['▷ show available digraphs',
        \'digraphs'],
    \['▷ insert lorem ipsum text',
        \'exe "Loremipsum" input("numero de palabras: ")'],
    \['▷ show current char info                                     ⌘ ga',
        \'normal ga'],
    \]
nnoremap <silent>[menu]e :Unite -silent -winheight=20 menu:text <CR>
" }}}

" neobundle menu {{{
let g:unite_source_menu_menus.neobundle = {
    \ 'description' : '      plugins administration with neobundle
        \                 ⌘ ,n',
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

" git menu {{{
let g:unite_source_menu_menus.git = {
    \ 'description' : '            admin git repositories
        \                                ⌘ ,g',
    \}
let g:unite_source_menu_menus.git.command_candidates = [
    \['▷ tig                                                        ⌘ ,gt',
        \'normal ,gt'],
    \['▷ git viewer             (gitv)                              ⌘ ,gv',
        \'normal ,gv'],
    \['▷ git viewer - buffer    (gitv)                              ⌘ ,gV',
        \'normal ,gV'],
    \['▷ git status             (fugitive)                          ⌘ ,gs',
        \'Gstatus'],
    \['▷ git diff               (fugitive)                          ⌘ ,gd',
        \'Gdiff'],
    \['▷ git commit             (fugitive)                          ⌘ ,gc',
        \'Gcommit'],
    \['▷ git log                (fugitive)                          ⌘ ,gl',
        \'exe "silent Glog | Unite -no-quit quickfix"'],
    \['▷ git log - all          (fugitive)                          ⌘ ,gL',
        \'exe "silent Glog -all | Unite -no-quit quickfix"'],
    \['▷ git blame              (fugitive)                          ⌘ ,gb',
        \'Gblame'],
    \['▷ git add/stage          (fugitive)                          ⌘ ,gw',
        \'Gwrite'],
    \['▷ git checkout           (fugitive)                          ⌘ ,go',
        \'Gread'],
    \['▷ git rm                 (fugitive)                          ⌘ ,gR',
        \'Gremove'],
    \['▷ git mv                 (fugitive)                          ⌘ ,gm',
        \'exe "Gmove " input("destino: ")'],
    \['▷ git push               (fugitive, buffer output)           ⌘ ,gp',
        \'Git! push'],
    \['▷ git pull               (fugitive, buffer output)           ⌘ ,gP',
        \'Git! pull'],
    \['▷ git command            (fugitive, buffer output)           ⌘ ,gi',
        \'exe "Git! " input("comando git: ")'],
    \['▷ git edit               (fugitive)                          ⌘ ,gE',
        \'exe "command Gedit " input(":Gedit ")'],
    \['▷ git grep               (fugitive)                          ⌘ ,gg',
        \'exe "silent Ggrep -i ".input("Pattern: ") | Unite -no-quit quickfix'],
    \['▷ git grep - messages    (fugitive)                          ⌘ ,ggm',
        \'exe "silent Glog --grep=".input("Pattern: ")." | Unite -no-quit quickfix"'],
    \['▷ git grep - text        (fugitive)                          ⌘ ,ggt',
        \'exe "silent Glog -S".input("Pattern: ")." | Unite -no-quit quickfix"'],
    \['▷ git init                                                   ⌘ ,gn',
        \'Unite output:echo\ system("git\ init")'],
    \['▷ git cd                 (fugitive)',
        \'Gcd'],
    \['▷ git lcd                (fugitive)',
        \'Glcd'],
    \['▷ git browse             (fugitive)                          ⌘ ,gB',
        \'Gbrowse'],
    \]
nnoremap <silent>[menu]g :Unite -silent -winheight=26 -start-insert menu:git<CR>
" }}}

" code menu {{{
let g:unite_source_menu_menus.code = {
    \ 'description' : '           code tools
        \                                            ⌘ ,p',
    \}
let g:unite_source_menu_menus.code.command_candidates = [
    \['▷ run python code                            (pymode)        ⌘ ,r',
        \'Pyrun'],
    \['▷ show docs for the current word             (pymode)        ⌘ K',
        \'normal K'],
    \['▷ insert a breakpoint                        (pymode)        ⌘ ,B',
        \'normal ,B'],
    \['▷ togle pylint revison                       (pymode)',
        \'PyLintToggle'],
    \['▷ run with python2 in tmux panel             (vimux)         ⌘ ,rr',
        \'normal ,rr'],
    \['▷ run with python3 in tmux panel             (vimux)         ⌘ ,r3',
        \'normal ,r3'],
    \['▷ run with python2 & time in tmux panel      (vimux)         ⌘ ,rt',
        \'normal ,rt'],
    \['▷ run with pypy & time in tmux panel         (vimux)         ⌘ ,rp',
        \'normal ,rp'],
    \['▷ command prompt to run in a tmux panel      (vimux)         ⌘ ,rc',
        \'VimuxPromptCommand'],
    \['▷ repeat last command                        (vimux)         ⌘ ,rl',
        \'VimuxRunLastCommand'],
    \['▷ stop command execution in tmux panel       (vimux)         ⌘ ,rs',
        \'VimuxInterruptRunner'],
    \['▷ inspect tmux panel                         (vimux)         ⌘ ,ri',
        \'VimuxInspectRunner'],
    \['▷ close tmux panel                           (vimux)         ⌘ ,rq',
        \'VimuxCloseRunner'],
    \['▷ rope autocompletion                        (rope)          ⌘ C-[espacio]',
        \'RopeCodeAssist'],
    \['▷ go to definition                           (rope)          ⌘ C-C g',
        \'RopeGotoDefinition'],
    \['▷ reorganize imports                         (rope)          ⌘ C-C r o',
        \'RopeOrganizeImports'],
    \['▷ refactorize - rename                       (rope)          ⌘ C-C r r',
        \'RopeRename'],
    \['▷ refactorize - extract variable             (rope)          ⌘ C-C r l',
        \'RopeExtractVariable'],
    \['▷ refactorize - extract method               (rope)          ⌘ C-C r m',
        \'RopeExtractMethod'],
    \['▷ refactorize - inline                       (rope)          ⌘ C-C r i',
        \'RopeInline'],
    \['▷ refactorize - move                         (rope)          ⌘ C-C r v',
        \'RopeMove'],
    \['▷ refactorize - restructure                  (rope)          ⌘ C-C r x',
        \'RopeRestructure'],
    \['▷ refactorize - use function                 (rope)          ⌘ C-C r u',
        \'RopeUseFunction'],
    \['▷ refactorize - introduce factory            (rope)          ⌘ C-C r f',
        \'RopeIntroduceFactory'],
    \['▷ refactorize - change signature             (rope)          ⌘ C-C r s',
        \'RopeChangeSignature'],
    \['▷ refactorize - rename current module        (rope)          ⌘ C-C r 1 r',
        \'RopeRenameCurrentModule'],
    \['▷ refactorize - move current module          (rope)          ⌘ C-C r 1 m',
        \'RopeMoveCurrentModule'],
    \['▷ refactorize - module to package            (rope)          ⌘ C-C r 1 p',
        \'RopeModuleToPackage'],
    \['▷ show docs for current word                 (rope)          ⌘ C-C r a d',
        \'RopeShowDoc'],
    \['▷ syntastic check                            (syntastic)',
        \'SyntasticCheck'],
    \['▷ syntastic errors                           (syntastic)',
        \'Errors'],
    \['▷ list virtualenvs                           (virtualenv)',
        \'Unite output:VirtualEnvList'],
    \['▷ activate virtualenv                        (virtualenv)',
        \'VirtualEnvActivate'],
    \['▷ deactivate virtualenv                      (virtualenv)',
        \'VirtualEnvDeactivate'],
    \['▷ run coverage2                              (coveragepy)',
        \'call system("coverage2 run ".bufname("%")) | Coveragepy report'],
    \['▷ run coverage3                              (coveragepy)',
        \'call system("coverage3 run ".bufname("%")) | Coveragepy report'],
    \['▷ toggle coverage report                     (coveragepy)',
        \'Coveragepy session'],
    \['▷ toggle coverage marks                      (coveragepy)',
        \'Coveragepy show'],
    \['▷ count lines of code',
        \'Unite -default-action= output:call\\ LinesOfCode()'],
    \['▷ toggle indent lines                                        ⌘ ,L',
        \'IndentLinesToggle'],
    \]
nnoremap <silent>[menu]p :Unite -silent -winheight=42 menu:code<CR>
" }}}

" markdown menu {{{
let g:unite_source_menu_menus.markdown = {
    \ 'description' : '       preview markdown extra docs
        \                           ⌘ ,k',
    \}
let g:unite_source_menu_menus.markdown.command_candidates = [
    \['▷ preview',
        \'Me'],
    \['▷ refresh',
        \'Mer'],
    \]
nnoremap <silent>[menu]k :Unite -silent menu:markdown<CR>
" }}}

" sessions menu {{{
let g:unite_source_menu_menus.sessions = {
    \ 'description' : '       sessions
        \                                              ⌘ ,h',
    \}
let g:unite_source_menu_menus.sessions.command_candidates = [
    \['▷ load session',
        \'Unite session'],
    \['▷ make session (default)',
        \'UniteSessionSave'],
    \['▷ make session (custom)',
        \'exe "UniteSessionSave " input("name: ")'],
    \]
nnoremap <silent>[menu]h :Unite -silent menu:sessions<CR>
" }}}

" bookmarks menu {{{
let g:unite_source_menu_menus.bookmarks = {
    \ 'description' : '      bookmarks
        \                                             ⌘ ,m',
    \}
let g:unite_source_menu_menus.bookmarks.command_candidates = [
    \['▷ open bookmarks',
        \'Unite bookmark:*'],
    \['▷ add bookmark',
        \'UniteBookmarkAdd'],
    \]
nnoremap <silent>[menu]m :Unite -silent menu:bookmarks<CR>
" }}}

" colorv menu {{{
function! GetColorFormat()
    let formats = {'r' : 'RGB',
                  \'n' : 'NAME',
                  \'s' : 'HEX',
                  \'ar': 'RGBA',
                  \'pr': 'RGBP',
                  \'pa': 'RGBAP',
                  \'m' : 'CMYK',
                  \'l' : 'HSL',
                  \'la' : 'HSLA',
                  \'h' : 'HSV',
                  \}
    let formats_menu = ["\n"]
    for [k, v] in items(formats)
        call add(formats_menu, "  ".k."\t".v."\n")
    endfor
    let fsel = get(formats, input('Choose a format: '.join(formats_menu).'? '))
    return fsel
endfunction

function! GetColorMethod()
    let methods = {
                   \'h' : 'Hue',
                   \'s' : 'Saturation',
                   \'v' : 'Value',
                   \'m' : 'Monochromatic',
                   \'a' : 'Analogous',
                   \'3' : 'Triadic',
                   \'4' : 'Tetradic',
                   \'n' : 'Neutral',
                   \'c' : 'Clash',
                   \'q' : 'Square',
                   \'5' : 'Five-Tone',
                   \'6' : 'Six-Tone',
                   \'2' : 'Complementary',
                   \'p' : 'Split-Complementary',
                   \'l' : 'Luma',
                   \'g' : 'Turn-To',
                   \}
    let methods_menu = ["\n"]
    for [k, v] in items(methods)
        call add(methods_menu, "  ".k."\t".v."\n")
    endfor
    let msel = get(methods, input('Choose a method: '.join(methods_menu).'? '))
    return msel
endfunction

let g:unite_source_menu_menus.colorv = {
    \ 'description' : '         color management
        \                                      ⌘ ,c',
    \}
let g:unite_source_menu_menus.colorv.command_candidates = [
    \['▷ open colorv                                                ⌘ ,cv',
        \'ColorV'],
    \['▷ open colorv with the color under the cursor                ⌘ ,cw',
        \'ColorVView'],
    \['▷ preview colors                                             ⌘ ,cpp',
        \'ColorVPreview'],
    \['▷ color picker                                               ⌘ ,cd',
        \'ColorVPicker'],
    \['▷ edit the color under the cursor                            ⌘ ,ce',
        \'ColorVEdit'],
    \['▷ edit the color under the cursor (and all the concurrences) ⌘ ,cE',
        \'ColorVEditAll'],
    \['▷ insert a color                                             ⌘ ,cii',
        \'exe "ColorVInsert " .GetColorFormat()'],
    \['▷ color list relative to the current                         ⌘ ,cgh',
        \'exe "ColorVList " .GetColorMethod() "
        \ ".input("number of colors? (optional): ")
        \ " ".input("number of steps?  (optional): ")'],
    \['▷ show colors list (Web W3C colors)                          ⌘ ,cn',
        \'ColorVName'],
    \['▷ choose color scheme (ColourLovers, Kuler)                  ⌘ ,css',
        \'ColorVScheme'],
    \['▷ show favorite color schemes                                ⌘ ,csf',
        \'ColorVSchemeFav'],
    \['▷ new color scheme                                           ⌘ ,csn',
        \'ColorVSchemeNew'],
    \['▷ create hue gradation between two colors',
        \'exe "ColorVTurn2 " " ".input("Color 1 (hex): ")
        \" ".input("Color 2 (hex): ")'],
    \]
nnoremap <silent>[menu]c :Unite -silent menu:colorv<CR>
" }}}

" vim menu {{{
let g:unite_source_menu_menus.vim = {
    \ 'description' : '            vim
        \                                                   ⌘ ,v',
    \}
let g:unite_source_menu_menus.vim.command_candidates = [
    \['▷ choose colorscheme',
        \'Unite colorscheme -auto-preview'],
    \['▷ mappings',
        \'Unite mapping -start-insert'],
    \['▷ edit configuration file (vimrc)',
        \'edit $MYVIMRC'],
    \['▷ choose filetype',
        \'Unite -start-insert filetype'],
    \['▷ vim help',
        \'Unite -start-insert help'],
    \['▷ vim commands',
        \'Unite -start-insert command'],
    \['▷ vim functions',
        \'Unite -start-insert function'],
    \['▷ vim runtimepath',
        \'Unite -start-insert runtimepath'],
    \['▷ vim command output',
        \'Unite output'],
    \['▷ unite sources',
        \'Unite source'],
    \['▷ kill process',
        \'Unite -default-action=sigkill -start-insert process'],
    \['▷ launch executable (dmenu like)',
        \'Unite -start-insert launcher'],
    \]
nnoremap <silent>[menu]v :Unite menu:vim -silent -start-insert<CR>
" }}}
" }}}

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

let g:junkfile#directory=expand($HOME."/.vim/tmp/junk")

" make this dir if no exists previously
silent! call MakeDirIfNoExists(expand(unite_data_directory)."/session/")

" }}}

" Utl {{{

map <Leader>j :Utl <CR><Bar>:redraw!<CR>

let g:utl_cfg_hdl_scm_http_system = "silent !firefox %u &"
let g:utl_cfg_hdl_mt_application_pdf = 'silent :!zathura %p &'
let g:utl_cfg_hdl_mt_image_jpeg = 'silent :!sxiv %p &'
let g:utl_cfg_hdl_mt_image_gif = 'silent :!sxiv %p &'
let g:utl_cfg_hdl_mt_image_png = 'silent :!sxiv %p &'

" }}}

" VimFiler {{{

nnoremap <silent><Leader>X :VimFiler<CR>

let g:vimfiler_as_default_explorer = 1

let g:vimfiler_tree_leaf_icon = '├'
let g:vimfiler_tree_opened_icon = '┐'
let g:vimfiler_tree_closed_icon = '─'
let g:vimfiler_file_icon = '┄'
let g:vimfiler_marked_file_icon = '✓'
let g:vimfiler_readonly_file_icon = '✗'

let g:vimfiler_force_overwrite_statusline = 0

let g:vimfiler_time_format = '%d-%m-%Y %H:%M:%S'
let g:vimfiler_data_directory = $HOME.'/.vim/tmp/vimfiler'

" }}}

" Vim-markdown-extra-preview {{{

" map <LocalLeader>mp :Me<CR>
" map <LocalLeader>mr :Mer<CR>

" let g:VMEPextensions = ['extra', 'codehilite']
" let g:VMEPhtmlreader= '/usr/bin/chromium'

" }}}

" vimux {{{

let g:VimuxUseNearestPane = 1

map <Leader>rr :call VimuxRunCommand('clear;cd '.expand("%:p:h") .' ;python2 '.bufname("%"))<CR>
map <Leader>r3 :call VimuxRunCommand('clear;cd '.expand("%:p:h") .' ;python3 '.bufname("%"))<CR>
map <Leader>rt :call VimuxRunCommand('clear;cd '.expand("%:p:h") .' ;time python2 '.bufname("%"))<CR>
map <Leader>rp :call VimuxRunCommand('clear;cd '.expand("%:p:h") .' ;time pypy '.bufname("%"))<CR>

map <Leader>rc :VimuxPromptCommand<CR>
map <Leader>rl :VimuxRunLastCommand<CR>
map <Leader>rs :VimuxInterruptRunner<CR>
map <Leader>ri :VimuxInspectRunner<CR>
map <Leader>rq :VimuxCloseRunner<CR>

" }}}

" Virtualenv {{{

let g:virtualenv_auto_activate = 1
let g:virtualenv_stl_format = '(%n)'

" }}}

" winresizer {{{

let g:winresizer_start_key = '<C-C><C-W>'
" cancelar pulsando ESC
" let g:winresizer_finish_with_escape = 1
let g:winresizer_keycode_finish = 27

" }}}

" zoomwintab {{{

map <Leader>z :ZoomWinTabToggle<CR>

" }}}

" Source Explorer (srcexpl.vim)

" // The switch of the Source Explorer
" nmap <F8> :SrcExplToggle<CR>

" // Set the height of Source Explorer window
" let g:SrcExpl_winHeight = 8

" // Set 100 ms for refreshing the Source Explorer
" let g:SrcExpl_refreshTime = 100

" // Set "Enter" key to jump into the exact definition context
" let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
" let g:SrcExpl_gobackKey = "<SPACE>"

" // In order to Avoid conflicts, the Source Explorer should know what plugins
" // are using buffers. And you need add their bufname into the list below
" // according to the command ":buffers!"
" let g:SrcExpl_pluginList = [
"         \ "__Tag_List__",
"         \ "_NERD_tree_",
"         \ "Source_Explorer"
"     \ ]

" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
" let g:SrcExpl_searchLocalDef = 1

" // Do not let the Source Explorer update the tags file when opening
" let g:SrcExpl_isUpdateTags = 0

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" //  create/update a tags file
" let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

" // Set "<F12>" key for updating the tags file artificially
" let g:SrcExpl_updateTagsKey = "<S-F8>"


" Powerline

"let g:Powerline_symbols = 'fancy'
"call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

" NERDTree

let NERDTreeIgnore = ['\.pyc$', '\~$', '\.swp$', '\.pyo$', '\.class$', '\.o$', '\.out$', '\.obj$', '\.rbc$', '\.rbo$', '\.zip$', '\.gz$', '\.bz$', '\.rar$', '^core$', '\.so\.[0-9]*$', '\.jpg$', '\.png$', '\.gif$', '\.mp[34]$']

let g:syntastic_phpcs_conf = "--standard=/home/gold/dev/dg/phpcs/CodeSniffer/Standards/dg/ruleset.xml"
let g:syntastic_python_checker = 'pylint'

" Color themes are also controlled by pathogen, so any additional tweaks
" should be done after pathogen infects.

highlight Folded ctermbg=DarkBlue ctermfg=Yellow
colorscheme xoria256
colorscheme calmar256-dark
hi MatchParen ctermfg=blue ctermbg=black
highlight ColorColumn ctermbg=darkblue guibg=gray10

set background=dark

"au BufRead,BufWrite *.hive set filetype=hive
"au BufRead,BufWrite *.hql set filetype=hive

" Vim-Startify setup

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
            \ '',
            \ '',
            \ '<F4>         File Explorer',
            \ '<F5>         Object Browser',
            \ '<F7>         Buffer explorer',
            \ '',
            \ '\ww          Wiki',
            \ '',
            \ ':Voom <type> Outliner (i.e :Voom python), :Voomhelp for help',
            \ ':Search <regex>  Multiple Search',
            \ ]
let NERDTreeHijackNetrw = 0
let g:startify_skiplist = [
        \ 'COMMIT_EDITMSG',
        \ $VIMRUNTIME .'/doc',
        \ 'bundle/.*/doc',
        \ '\.DS_Store'
        \ ]

autocmd VimEnter *
            \ if !argc() |
            \   Startify |
            \   NERDTree |
"            \   TagbarOpen |
            \   execute "normal \<c-w>w" |
            \ endif

let g:ackprg = 'ag --nogroup --nocolor --column'
let g:slimv_leader = '\'
let g:lisp_rainbow=1
let g:goldenview__enable_default_mapping = 0
map <silent> <C-O> <Plug>GoldenViewSplit
let g:TXB_HOTKEY='<C-N>'
" let g:AutotagsUpdate='<C-F8>'

let g:vimwiki_list = [{'path': '~/vimwiki',
                     \ 'path_html': '~/vimwiki/html',
                     \ 'auto_export': 1,
                     \ 'template_path': '~/vimwiki/templates',
                     \ 'template_default': 'template',
                     \ 'template_ext': '.html',
                     \ 'css_name': 'css/style.css'}]

let g:haddock_browser="/usr/bin/chromium-browser"

" END PLUGINS SETUP }}}

" FILETYPES  {{{ ==============================================================

" DJANGO HTML (Templates) {{{

au BufRead,BufNewFile */templates/*.html setlocal filetype=htmldjango.html

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

" LUA {{{

au BufRead,BufNewFile rc.lua setlocal foldmethod=marker

" }}}

" MARKDOWN {{{

" markdown filetype file
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
autocmd FileType markdown NeoBundleSource vim-markdown
autocmd FileType markdown NeoBundleSource vim-markdown-extra-preview

" }}}

" Inform7
au BufNewFile,BufRead *.ni      setf inform7

" Pig
augroup filetypedetect
    au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
    au BufNewFile,BufRead Makefile* set filetype=make syntax=make
augroup END

" Tasks
autocmd BufNewFile,BufRead todo.txt,*.task,*.tasks  setfiletype task

" Avro IDL files
au BufRead,BufNewFile *.avdl,*.avsc setlocal filetype=avro-idl

" Hive files
au BufRead,BufWrite *.hive set filetype=hive
au BufRead,BufWrite *.hql set filetype=hive

" END FILETYPES }}}

" Other Customizations {{{ ====================================================

let s:vimcustomfile = $HOME.'/.vim/custom.vim'

if filereadable(s:vimcustomfile)
    exec 'source '.s:vimcustomfile
endif

set tags=./tags;/

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
" map <Up> :echo "foo"<CR>
" map <Down> :echo "foo"<CR>
" map <Left> :echo "foo"<CR>
" map <Right> :echo "foo"<CR>
" map <Home> :echo "foo"<CR>
" map <End> :echo "foo"<CR>
" map <PageUp> :echo "foo"<CR>
" map <PageDown> :echo "foo"<CR>
" map <End> :echo "foo"<CR>
set mouse=a

" }}}

" vim:foldmethod=marker
