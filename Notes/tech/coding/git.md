# GIT Versioning tool for developers
> my daily most used commands

Here are some git commands, that I NOT used daily. Mainly i use the zsh git plugin with all the useful short commands
(alias) like `gs # git status` and `gcd # git checkout develop`. It is really handy and i love it.  

**Switch to previous branch**
```bash
git checkout -
```
`-` is an alias for the previous branch

**Open all files with conflicts at once**
```bash
git diff --name-only --diff-filter=U | uniq  | xargs $EDITOR
```

**What changed?**
```bash
git whatchanged —-since=‘2 weeks ago’
```

**Open a branch as new directory**
```bash
git worktree add ../worktree2 master
git worktree remove ../f_branch_worktree
```

**Search in git history**
```bash
git rev-list —all | xargs git grep '<YOUR REGEX>' # regex
git rev-list —all | xargs git grep -F '<YOUR STRING>' # non-regex
```
