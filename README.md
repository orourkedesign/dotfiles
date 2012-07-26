# dotfiles

### Handcrafted with all the love in the world.

![iTerm](http://f.cl.ly/items/2V1s1n022r473D1p0h2U/iterm.png)

![MacVim](http://f.cl.ly/items/1L2x2B3O2s1a313k2i1R/macvim.png)

---

# Setup

1. Install a recent version of vim with your favourite package manager.

   ``` shell
   brew install macvim
   ```

2. Install git, because if you don't have it you need it in your life.

    ``` shell
    brew install git
    ```

3. Clone the repo.

   ``` shell
   git clone git://github.com/jcf/dotfiles ~/.dotfiles

4. Link dotfiles and install all the best packages.

   ``` shell
   cd ~/.dotfiles
   rake install packages:install
   ```

5. Wipe out my ssh config. It's no use to you.

   ``` shell
   echo "" > ssh/config
   ```

6. Replace my name, email, and Github user in `git/gitconfig.symlink`
   with your details.

7. Remove my PGP key, and add your own.

   ``` shell
   gpg -a --export <KEY_ID> > key.asc
   ```

# Tasks

**Install packages via Homebrew:**

``` shell
rake packages:install
```

**Update plugin list:**

``` shell
rake plugins:update_readme
```

# License

Unless otherwise stated, everything is covered by the MIT license.

# Plugin List

Auto generated by `rake plugins:update_readme`.


 * [vundle](https://github.com/gmarik/vundle) - Vundle, the plug-in manager for Vim
 * [vim-ruby](https://github.com/vim-ruby/vim-ruby) - Vim/Ruby Configuration Files
 * [vim-rake](https://github.com/tpope/vim-rake) - rake.vim: it's like rails.vim without the rails
 * [vim-bundler](https://github.com/tpope/vim-bundler) - bundler.vim: Lightweight support for Ruby's Bundler
 * [vim-endwise](https://github.com/tpope/vim-endwise) - endwise.vim: wisely add "end" in ruby, endfunction/endif/more in vim script, etc
 * [blockle.vim](https://github.com/vim-scripts/blockle.vim) - Toggle ruby block styles
 * [vim-rails](https://github.com/tpope/vim-rails) - rails.vim: Ruby on Rails power tools
 * [vim-ruby-sinatra](https://github.com/hallison/vim-ruby-sinatra) - Vim syntax highlight and snippets that helper coding applications based in Sinatra micro-framework.
 * [PickAColor.vim](https://github.com/vim-scripts/PickAColor.vim) - Inserts and edits color codes using a color name or a graphic color chooser.
 * [colorv.vim](https://github.com/Rykka/colorv.vim) - A vim plugin to make  colors handling easier
 * [vim-ragtag](https://github.com/tpope/vim-ragtag) - ragtag.vim: ghetto HTML/XML mappings (formerly allml.vim)
 * [sparkup](https://github.com/Lokaltog/sparkup) - A parser for a condensed HTML format
 * [hammer.vim](https://github.com/matthias-guenther/hammer.vim) - vim,  your markup language of choice, and your browser of choice.
 * [vim-stylus](https://github.com/wavded/vim-stylus) - Syntax Highlighting for Stylus
 * [vim-slim](https://github.com/bbommarito/vim-slim) - A clone of the slim vim plugin from stonean. For use with Pathogen.
 * [vim-haml](https://github.com/tpope/vim-haml) - Vim runtime files for Haml, Sass, and SCSS
 * [vim-less](https://github.com/groenewege/vim-less) - vim syntax for LESS (dynamic CSS)
 * [vim-coffee-script](https://github.com/kchmck/vim-coffee-script) - CoffeeScript support for vim
 * [vim-javascript](https://github.com/pangloss/vim-javascript) - Vastly improved vim's javascript indentation.
 * [vim-jade](https://github.com/statianzo/vim-jade) - Vim syntax highlighting for the Jade templating engine.
 * [textile.vim](https://github.com/timcharper/textile.vim) - Textile for VIM
 * [vim-liquid](https://github.com/tpope/vim-liquid) - Vim Liquid runtime files with Jekyll enhancements
 * [vim-markdown](https://github.com/tpope/vim-markdown) - Vim Markdown runtime files
 * [vim-jquery](https://github.com/itspriddle/vim-jquery) - Fork of bronson's vim-jquery which is now gone
 * [vim-handlebars](https://github.com/nono/vim-handlebars) - Vim plugin for Handlebars
 * [nginx.vim](https://github.com/mutewinter/nginx.vim) - Syntax highlighting for nginx.conf and related config files.
 * [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax) - Add CSS3 syntax support to vim's built-in `syntax/css.vim`.
 * [vim-fugitive](https://github.com/tpope/vim-fugitive) - fugitive.vim: a Git wrapper so awesome, it should be illegal
 * [vim-git](https://github.com/tpope/vim-git) - Vim Git runtime files
 * [gitv](https://github.com/gregsexton/gitv) - gitk for Vim.
 * [vim-extradite](https://github.com/int3/vim-extradite) - A git commit browser for vim. Extends fugitive.vim.
 * [applescript.vim](https://github.com/vim-scripts/applescript.vim) - Syntax highlighting for AppleScript
 * [vim-cucumber](https://github.com/tpope/vim-cucumber) - Vim Cucumber runtime files
 * [puppet-vim](https://github.com/ajf/puppet-vim) - Vim stuff for puppet
 * [cocoa.vim](https://github.com/jcf/cocoa.vim) - Vim plugin for Cocoa/Objective-C development.
 * [vim-latex](https://github.com/jcf/vim-latex) - Mirror of vim-latex as Sourceforge's git support blows chunks!
 * [vim-json](https://github.com/leshill/vim-json) - Pathogen friendly packaging of vim-json from Jeroen Ruigrok van der Werven http://www.vim.org/scripts/script.php?script_id=1945
 * [tomdoc.vim](https://github.com/duwanis/tomdoc.vim) - A simple syntax add-on for vim that highlights your TomDoc comments.
 * [vim-tomdoc](https://github.com/jc00ke/vim-tomdoc) - Simple vim plugin that adds TomDoc templates to your code.
 * [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) - precision colorscheme for the vim text editor
 * [vim-distinguished](https://github.com/Lokaltog/vim-distinguished) - A dark vim color scheme for 256-color terminals.
 * [vim-vividchalk](https://github.com/tpope/vim-vividchalk) - vividchalk.vim: a colorscheme strangely reminiscent of Vibrant Ink for a certain OS X editor
 * [neocomplcache](https://github.com/Shougo/neocomplcache) - Ultimate auto-completion system for Vim.
 * [IndexedSearch](https://github.com/vim-scripts/IndexedSearch) - shows  'Nth match out of M'  at every search (index of match+total # matches)
 * [swap-parameters](https://github.com/mutewinter/swap-parameters) - Swap parameters of a function or a comma separated list with a single command.
 * [vim-slurper](https://github.com/adamlowe/vim-slurper) - Vim script for slurper gem to provide file specific syntax highlighting and key mappings.
 * [neocomplcache](https://github.com/Shougo/neocomplcache) - Ultimate auto-completion system for Vim.
 * [ultisnips](https://github.com/SirVer/ultisnips) - Official Mirror of UltiSnips trunk on LaunchPad. Send pull requests to SirVer/ultisnips!
 * [file-line](https://github.com/bogado/file-line) - Plugin for vim to enabling opening a file in a given line
 * [vim-easymotion](https://github.com/Lokaltog/vim-easymotion) - Vim motions on speed!
 * [gundo.vim](https://github.com/sjl/gundo.vim) - A git mirror of gundo.vim
 * [bufexplorer](https://github.com/corntrace/bufexplorer) - Clone of Jeff Lanzarotta's bufexplorer from vim.org
 * [vim-scratch](https://github.com/duff/vim-scratch) - Yegappan Lakshmanan's scratch.vim plugin
 * [vim-powerline](https://github.com/Lokaltog/vim-powerline) - The ultimate vim statusline utility.
 * [ctrlp.vim](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder.
 * [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object) - Vim plugin that defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts, etc.
 * [nerdtree](https://github.com/scrooloose/nerdtree) - A tree explorer plugin for vim.
 * [splice.vim](https://github.com/sjl/splice.vim) - A Vim plugin for managing three-way merges.
 * [vim-space](https://github.com/spiiph/vim-space) - space.vim - Smart Space key for Vim
 * [vim-quickrun](https://github.com/thinca/vim-quickrun) - Run commands quickly.
 * [vim-abolish](https://github.com/tpope/vim-abolish) - abolish.vim: easily search for, substitute, and abbreviate multiple variants of a word
 * [syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks for vim
 * [nerdcommenter](https://github.com/scrooloose/nerdcommenter) - Vim plugin for intensely orgasmic commenting
 * [ack.vim](https://github.com/mileszs/ack.vim) - Vim plugin for the Perl module / CLI script 'ack'
 * [tagbar](https://github.com/majutsushi/tagbar) - Vim plugin that displays tags in a window, ordered by class etc.
 * [EasyGrep](https://github.com/vim-scripts/EasyGrep) - Fast and Easy Find and Replace Across Multiple Files
 * [vim-eunuch](https://github.com/tpope/vim-eunuch) - eunuch.vim: helpers for UNIX
 * [vim-repeat](https://github.com/tpope/vim-repeat) - repeat.vim: enable repeating supported plugin maps with "."
 * [vim-speeddating](https://github.com/tpope/vim-speeddating) - speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more
 * [vim-surround](https://github.com/tpope/vim-surround) - surround.vim: quoting/parenthesizing made simple
 * [vim-unimpaired](https://github.com/tpope/vim-unimpaired) - unimpaired.vim: pairs of handy bracket mappings
 * [tabular](https://github.com/godlygeek/tabular) - Vim script for text filtering and alignment
 * [Indent-Guides](https://github.com/vim-scripts/Indent-Guides) - A plugin for visually displaying indent levels in gvim.
 * [ZoomWin](https://github.com/vim-scripts/ZoomWin) - Zoom in/out  of windows (toggle between one window and multi-window)
 * [sudo.vim](https://github.com/vim-scripts/sudo.vim) - Allows one to edit a file with prevledges from an unprivledged session.

That's 75 plugins.
