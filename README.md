# open-backlog-issue.vim
Open Backlog issue from vim.

# Dependencies
* Vim 8.1 or higher.
* [tyru/open-browser.vim](https://github.com/tyru/open-browser.vim) .

# Usage
Type `:OpenBacklogIssue` or `gbx` on Backlog's issue key.

# Preferences
In your `.vimrc`,

```vim
let g:open_backlog_issue_prefix = 'https://YOUR_SPACE_KEY.backlog.com'

" Optional keymapping.
nmap gbx <Plug>(open-backlog-issue)
```

# Install
## Vim 8 package
```sh
git clone https://github.com/tyru/open-browser.vim.git /path/to/packpath/start/open-browser.vim
git clone https://github.com/mmktomato/open-backlog-issue.vim.git /path/to/packpath/start/open-backlog-issue.vim
```

## vim-plug
In your `.vimrc`,

```vim
Plug 'tyru/open-browser.vim'
Plug 'mmktomato/open-backlog-issue.vim'
```

Then `:PlugInstall`.

# License
MIT
