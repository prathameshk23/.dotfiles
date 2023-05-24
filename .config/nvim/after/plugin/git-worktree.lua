require("git-worktree").setup({

})

require("telescope").load_extension("git_worktree")

function _TOGGLE_GITWORKTREE()
   require('telescope').extensions.git_worktree.git_worktrees()
end

function _CREATE_GITWORKTREE()
   require('telescope').extensions.git_worktree.create_git_worktree()
end


