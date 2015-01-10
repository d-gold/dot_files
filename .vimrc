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
" call neobundle#rc(expand($HOME.'/.vim/bundle/'))
call neobundle#begin(expand($HOME.'/.vim/bundle/'))
call neobundle#end()

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

" Buffers {{{ 

NeoBundle 'moll/vim-bbye'

" }}}

" Calendar {{{

NeoBundle 'itchyny/calendar.vim' " A calendar application for Vim

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

" Formatting {{{ 

NeoBundle 'vim-scripts/Align'
NeoBundle 'godlygeek/tabular'
NeoBundle 'michaeljsmith/vim-indent-object'

" }}} 

" Languages {{{

" On Demand support for a lot of languages
NeoBundle 'sheerun/vim-polyglot'

" Bash {{{

" NeoBundle 'vim-scripts/bash-support.vim' " BASH IDE -- Write and run BASH-scripts using menus and hotkeys.

" }}}

" C {{{

NeoBundle 'vim-scripts/c.vim'

" }}}

" Chef {{{

NeoBundle 'vadv/vim-chef' " Vim plugins for chef

" }}}

" CSV {{{

NeoBundle 'vim-scripts/csv.vim' " A Filetype plugin for csv files.

" }}}

" Elixir {{{

NeoBundle 'elixir-lang/vim-elixir' " Vim configuration files for Elixir

" }}}

" Java {{{

NeoBundle 'Better-Javascript-Indentation' " 1.0.0 Vastly improved javascript indentation
"NeoBundle 'java.vim' " 1.0   Convenience mappings for Java programming
NeoBundle 'java_apidoc.vim' " 1.0   Java API documentation viewer (JavaDoc)
NeoBundle 'javacomplete' " 0.71  Omni Completion for JAVA
"NeoBundle 'javaimp.vim' " 0.1   Open a Java source file from its import statement
NeoBundle 'vim-scripts/javalog.vim' " syntax highlighting for default java.util.logging output
"NeoBundle 'mbedna/vjava' " Vim plugin used to compile java code based on syntastic.
"NeoBundle 'JavaBrowser' " 1.11  Shows java file class, package in a tree as in IDEs. Java source browser.
"NeoBundle 'InsertTry.vim' " 0.1   put java's try catch around marked lines
"NeoBundle 'java_fold' " 1.0   Folding expression for Java
"NeoBundle 'vim-scripts/java_getset.vim' " Automatically add getter/setters for Java properties (including array-based)

" }}}

" Erlang {{{

" }}}

" Javascript {{{ 

"NeoBundle 'tyok/js-mask' 

" }}} 

" Go {{{

" Temporarily commented out until I get around to setting up go.
" NeoBundle "fatih/vim-go"

" }}}

" Groovy {{{
"
NeoBundle 'vim-scripts/groovyindent' " groovy indent script
NeoBundle 'vim-scripts/groovy.vim--Ruley' " Runs or compiles Groovy scripts.
"  NeoBundle 'rdolgushin/groovy.vim' " Fixed Groovy syntax plugin for Vim 7.4

" }}}

" Haskell {{{

NeoBundle 'vim-scripts/haskell.vim' " Syntax file for Haskell
NeoBundle 'vim-scripts/haskellFold' " Provide a foldexpr function which give nice folding for haskell files.
NeoBundle 'vim-scripts/indenthaskell.vim' " Haskell indent file
NeoBundle 'aniederl/haskellmode-vim' " git mirror of http://code.haskell.org/haskellmode-vim
NeoBundle 'enomsg/Vim-HaskellConcealPlus' " Conceal operator for haskell
" NeobBundle 'eagletmt/ghcmod-vim' " Having fun getting ghc-mod to install...
NeoBundle 'eagletmt/neco-ghc'
NeoBundle 'Twinside/vim-hoogle'


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

" Markup/down {{{

NeoBundle 'confluencewiki.vim' " 0.0.1 Confluence WIKI syntax
"NeoBundle 'gabrielelana/vim-markdown' " Markdown for Vim: a complete environment to create Markdown files with a syntax highlight that don't sucks!
"NeoBundle 'hallison/vim-markdown'
NeoBundle 'tpope/vim-markdown' " Vim Markdown runtime files
NeoBundle 'nelstrom/vim-markdown-folding' " Fold markdown documents by section.

NeoBundle 'vim-scripts/instant-markdown.vim' " Real-time Markdown previews from Vim!

" }}}

" PHP {{{

NeoBundle 'arnaud-lb/vim-php-namespace'

" }}}

" PHP {{{

NeoBundle 'laurentb/vim-cute-php' " Unicode goodness for PHP code by using vim's “conceal” feature - shamelessly taken from vim-cute-python

" }}}

" Python {{{

NeoBundle "Yggdroot/indentLine"
NeoBundleLazy 'klen/python-mode', {'autoload': {'filetypes': ['python']}}
NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'vim-scripts/python_match.vim' " Extend the % motion and define g%, [%, and ]% motions for Python files
NeoBundle 'vim-scripts/python_open_module' " open the python module file below the cursor when coding python
NeoBundle 'ehamberg/vim-cute-python'

" }}}

" Ruby {{{

NeoBundle "tpope/vim-rails"
NeoBundle "tpope/vim-rake"
" NeoBundle "tpope/vim-projectionist"
NeoBundle "thoughtbot/vim-rspec"

" }}}

" Text {{{

NeoBundle 'txt.vim' " 1.0   Universal syntax script for all txt docs, logs and other types

NeoBundle 'kana/vim-textobj-entire' " ae, ie
NeoBundle 'kana/vim-textobj-indent' " ai, ii, aI, iI
NeoBundle 'kana/vim-textobj-lastpat' " a/, i/, a?, i?
NeoBundle 'kana/vim-textobj-line' " al, il
NeoBundle 'kana/vim-textobj-underscore' " a_, i_
NeoBundle 'kana/vim-textobj-user'

" }}}

" }}}

" Marks {{{

NeoBundle 'kshenoy/vim-signature'

" }}}

" Maven Stuff {{{ 

" NeoBundle 'vim-scripts/maven-ide' " maven-ide plugin 
NeoBundle 'mikelue/vim-maven-plugin' " The Maven plugin for VIM

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
NeoBundle 'thinca/vim-unite-history' " A source of unite.vim for history of command/search.
NeoBundle 'farseer90718/unite-workflow' " unite.vim extentions for convenience similar to alfred-workflow
NeoBundle 'unite-gem' " 1.0   A Unite.vim plugin to search/install RubyGems packages easily, using gem command
NeoBundle 'ujihisa/unite-haskellimport' " :Unite haskellimport
NeoBundle 'thinca/vim-unite-history' " A source of unite.vim for history of command/search.
NeoBundle 'Shougo/unite-sudo' " sudo source for unite.vim
NeoBundle 'moznion/unite-git-conflict.vim' " Unite source for git conflicts.
NeoBundle 'kickstamp/unite-ghcExtension' " unite source for ghc extensions
"NeoBundle 'kamichidu/vim-unite-javaimport' " unite source to add import statements of java easily.
NeoBundle 'itchyny/unite-preview' " A preview plugin for vimfiler, unite
NeoBundle 'eagletmt/unite-haddock' " unite.vim source for haddock
NeoBundle 'dameninngenn/unite-perldoc' " perldoc for unite
NeoBundle 'ujihisa/unite-launch' " Launch external commands and persist the results
NeoBundle 'Shougo/unite-build' " Build by unite interface

" }}}

" MRU {{{

NeoBundle 'Shougo/neomru.vim'

" }}}

" Multiple Cursors {{{

NeoBundle 'terryma/vim-multiple-cursors'

" }}}

" Names {{{

" NeoBundle 'operator-camelize' " 0.0.0 snake_case -> SnakeCase, CamelCase -> camel_case

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
NeoBundle 'vim-scripts/gitignore'
NeoBundle 'int3/vim-extradite'

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
NeoBundle 'xolox/vim-easytags' " Automated tag file generation and syntax highlighting of tags in Vim
" NeoBundle 'craigemery/vim-autotag' " 1.0   Updates entries in a tags file automatically when saving
" NeoBundle 'szw/vim-tags'
" NeoBundle 'OmniTags' " 0.1   This plugin can help you to maintenance tags file.

" }}}

" TMUX {{{ 

NeoBundle 'brauner/vimtux'
NeoBundle 'christoomey/vim-tmux-navigator'

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

" Experimental {{{

NeoBundle 'thinca/vim-portal' " Hello and, again, this is the Portal Gun for Vim.
" NeoBundle 'vim-scripts/project.tar.gz' " Organize/Navigate projects of files (like IDE/buffer explorer)
" NeoBundle 'yavdb' " 0.1   Yet Another (Generic) Vim Debugger Integration
" NeoBundle 'idbrii/AsyncCommand' 
" NeoBundle 'Vim-JDE' " 2.00.11 Vim - Just a Development Envirement (Java/C++)

" }}}

" ME {{{

NeoBundle 'd-gold/vim-cute-java' 
NeoBundle 'd-gold/vim-cute-groovy' 
NeoBundle 'd-gold/vim-cute-ruby' 
NeoBundle 'd-gold/vim-cute-javascript' 
NeoBundle 'd-gold/vim-java-syntax' 
NeoBundle 'd-gold/groovy.vim' 

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

" EasyTags {{{

let g:easytags_async = 1
" let g:easytags_dynamic_files = 1
let g:easytags_by_filetype = "~/.vim/tags/"
" let g:easytags_syntax_keyword = 'always'
" let g:easytags_on_cursorhold = 0
let g:easytags_auto_highlight = 0


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

" Haskell Stuff {{{ 

let g:haskell_conceal_wide = 1
let g:haskell_conceal_enumerations = 1

" }}}

" Indent Lines {{{

map <silent> <Leader>L :IndentLinesToggle<CR>
let g:indentLine_enabled = 0
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239

" }}}

" Maths Mode {{{ 

map <Leader>m :call ToggleMaths()<CR>
map <Leader>M :call SetMaths()<CR>

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
let g:NERDTreeWinSize = 40

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

"Syntastic
" let g:syntastic_check_on_open = 1
" let g:syntastic_mode_map = { 'mode': 'passive',
"                                \ 'passive_filetypes': ['groovy'] }
"                                "\ 'active_filetypes': ['javascript', 'html', 'css'],

" let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-", "invalid value \"{{"]

let g:syntastic_groovy_checkers = ['codenarc']

" "map <Leader>c :SyntasticCheck<CR>

" let g:syntastic_always_populate_loc_list=1

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

let g:tagbar_type_groovy = {
    \ 'ctagstype' : 'groovy',
    \ 'kinds'     : [
        \ 'p:packages:0:1',
        \ 'I:imports:1:1',
        \ 'g:enums:0:1',
        \ 'i:interfaces:0:1',
        \ 'c:classes:0:1',
        \ 'C:constructors:0:1',
        \ 'f:functions:0:1',
        \ 'm:member variables:0:1',
        \ 'v:variables:0:1',
    \ ],
    \ 'sro'        : '.'
\ }

let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }

" }}}

" Tags {{{

let g:vim_tags_auto_generate = 1

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

" Toggle Maths Mode {{{

function! ToggleMaths() 
    if &conceallevel == 0
        setlocal concealcursor=nv 
        setlocal conceallevel=2
        "hi! Conceal ctermbg=Black ctermfg=LightGreen
        hi! Conceal ctermfg=LightGreen
    else 
        set conceallevel=0
    endif
endfunction

function! SetMaths() 
    setlocal concealcursor=nv 
    setlocal conceallevel=2
    "hi! Conceal ctermbg=Black ctermfg=LightGreen
    hi! Conceal ctermfg=LightGreen
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
" set magic

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

" Conceal Mode {{{

set concealcursor=nv
set conceallevel=2

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

" Formatting {{{

" Alignment {{{

" Stop Align plugin from forcing its mappings on us
let g:loaded_AlignMapsPlugin=1
" Align on equal signs
map <Leader>a= :Align =<CR>
" Align on commas
map <Leader>a, :Align ,<CR>
" Align on pipes
map <Leader>a<bar> :Align <bar><CR>
" Prompt for align character
map <leader>ap :Align

" Enable some tabular presets for Haskell
let g:haskell_tabular = 1

" }}}

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

" Open window splits in various places
nmap <leader>sh :leftabove  vnew<CR>
nmap <leader>sl :rightbelow vnew<CR>
nmap <leader>sk :leftabove  new<CR>
nmap <leader>sj :rightbelow new<CR>

" }}}

" Searching {{{

set incsearch                   " incremental searching
set showmatch                   " show pairs match
set hlsearch                    " highlight search results
set smartcase                   " smart case ignore
set smartindent                 " Turn on autoindenting of blocks
set ignorecase                  " ignore case letters

" }}}

" Startup {{{

" Return to last edit position when opening files (You want this!)
augroup last_edit
  autocmd!
  autocmd BufReadPost *
       \ if line("'\"") > 0 && line("'\"") <= line("$") |
       \   exe "normal! g`\"" |
       \ endif
augroup END
" Remember info about open buffers on close
set viminfo^=%

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

"set tags="./tags,~/.vim/tags/
set tags=./tags,tags,~/.vim/tags/tags

" }}}

" Timeouts {{{

set notimeout
set ttimeout
set ttimeoutlen=10

" }}}

" TMUX {{{

" Manually create key mappings (to avoid rebinding C-\)
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>

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

let g:EclimCompletionMethod = 'omnifunc'

" }}}

" Key Mapping {{{

nnoremap <LocalLeader><Space> <PageDown>

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
" delete buffer without closing pane
noremap <leader>bd :Bd<cr>

" }}}

" Close buffer {{{

noremap <leader>x :bd<CR>

" }}}

" sudo write {{{

" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" (it will prompt for sudo password when writing)
cmap w!! %!sudo tee > /dev/null %

" }}}

" Visual Mode stuff {{{

vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

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

" Groovy {{{

autocmd FileType groovy setlocal iskeyword-=.
au BufNewFile,BufRead *.groovy  setf groovy
"  if did_filetype()
"    finish
"  endif
"  if getline(1) =~ '^#!.*[/\\]groovy\>'
"    setf groovy
"  endif
let g:groovy_minlines=1000


" }}}

" Haskell {{{

augroup haskell
    autocmd!
    autocmd FileType haskell map <silent> <leader><cr> :noh<cr>:GhcModTypeClear<cr>:SyntasticReset<cr>
    autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
augroup END

function! Pointfree()
  call setline('.', split(system('pointfree '.shellescape(join(getline(a:firstline, a:lastline), "\n"))), "\n"))
endfunction
vnoremap <silent> <leader>h. :call Pointfree()<CR>

function! Pointful()
  call setline('.', split(system('pointful '.shellescape(join(getline(a:firstline, a:lastline), "\n"))), "\n"))
endfunction
vnoremap <silent> <leader>h> :call Pointful()<CR>

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

" Makefiles {{{

augroup filetypedetect
    au BufNewFile,BufRead Makefile* set filetype=make syntax=make
augroup END

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

" Menus {{{

" bookmarks menu {{{
let g:unite_source_menu_menus.bookmarks = {
    \ 'description' : '      bookmarks
        \                                             ⌘ [space]m',
    \}
let g:unite_source_menu_menus.bookmarks.command_candidates = [
    \['▷ open bookmarks',
        \'Unite bookmark:*'],
    \['▷ add bookmark',
        \'UniteBookmarkAdd'],
    \]
nnoremap <silent>[menu]m :Unite -silent menu:bookmarks<CR>
" }}}

" buffer internal searching menu {{{
let g:unite_source_menu_menus.searching = {
    \ 'description' : '      searchs inside the current buffer
        \                     ⌘ [space]f',
    \}
let g:unite_source_menu_menus.searching.command_candidates = [
    \['▷ search line                                                ⌘ ,f',
        \'Unite -auto-preview -start-insert line'],
    \['▷ search word under the cursor                               ⌘ [space]8',
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

" buffers, tabs & windows menu {{{
let g:unite_source_menu_menus.navigation = {
    \ 'description' : '     navigate by buffers, tabs & windows
        \                   ⌘ [space]b',
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

" code menu {{{

let g:unite_source_menu_menus.code = {
    \ 'description' : '           code tools
        \                                            ⌘ [space]p',
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

" files and dirs menu {{{
let g:unite_source_menu_menus.files = {
    \ 'description' : '          files & dirs
        \                                          ⌘ [space]o',
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

" File Searching Menu {{{

let g:unite_source_menu_menus.grep = {
    \ 'description' : '           search files
        \                                          ⌘ [space]a',
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

" General Stuff {{{

let g:unite_source_menu_menus.general = {
    \ 'description' : '           general stuff
        \                                            ⌘ z',
    \}
let g:unite_source_menu_menus.general.command_candidates = [
    \['▷ Buffers                                                    ⌘ b',
        \'Unite -silent buffer'],
    \['▷ Buffer Search                                              ⌘ 8',
        \'Unite -silent -no-slit -auto-preview line'],
    \['▷ Build',
        \'Unite -silent build'],
    \['▷ Colorscheme',
        \'Unite colorscheme'],
    \['▷ Grep                                                       ⌘ a',
        \'Unite -silent -no-quit grep'],
    \['▷ Help',
        \'UniteWithCursorWord -silent help'],
    \['▷ MRU                                                        ⌘ m',
        \'Unite -silent file_mru'],
    \['▷ Tabs                                                       ⌘ B',
        \'Unite -silent tab'],
    \['▷ Tags                                               ',
        \'Unite -silent -vertical -winwidth=40 -direction=topleft -toggle outline'],
    \['▷ Tasks                                                      ⌘ ;',
        \'Unite -silent -toggle grep:%::FIXME\|TODO\|NOTE\|XXX\|COMBAK\|@todo'],
    \['▷ Yankring                                                   ⌘ i',
        \'Unite -silent history/yank'],
    \]
nnoremap <silent>[menu]z :Unite -silent -winheight=42 menu:general<CR>

" }}}

" git menu {{{
let g:unite_source_menu_menus.git = {
    \ 'description' : '            admin git repositories
        \                                ⌘ [space]g',
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

" markdown menu {{{
let g:unite_source_menu_menus.markdown = {
    \ 'description' : '       preview markdown extra docs
        \                           ⌘ [space]k',
    \}
let g:unite_source_menu_menus.markdown.command_candidates = [
    \['▷ preview',
        \'Me'],
    \['▷ refresh',
        \'Mer'],
    \]
nnoremap <silent>[menu]k :Unite -silent menu:markdown<CR>
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

" sessions menu {{{
let g:unite_source_menu_menus.sessions = {
    \ 'description' : '       sessions
        \                                              ⌘ [space]h',
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

" text editing menu {{{
let g:unite_source_menu_menus.text = {
    \ 'description' : '           text editing
        \                                          ⌘ [space]e',
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

" yanks, registers & history menu {{{
let g:unite_source_menu_menus.registers = {
    \ 'description' : '      yanks, registers & history
        \                            ⌘ [space]i',
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


augroup whitespace
  autocmd!
  autocmd BufWrite *.hs :call StripTrailingWhitespaces()
augroup END

" Reload .vimrc on change {{{

augroup sourcing
    autocmd!
    autocmd! BufWritePost .vimrc source $MYVIMRC
augroup END

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
