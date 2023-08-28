augroup nvim_ghost_user_autocommands
  au User www.reddit.com,www.stackoverflow.com setfiletype markdown
  au User www.reddit.com,www.github.com setfiletype markdown
  au User *github.com setfiletype markdown
  au User *leetcode.com setfiletype python
  au User *leetcode.com Codeium DisableBuffer
augroup END
