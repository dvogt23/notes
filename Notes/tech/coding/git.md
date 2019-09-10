# GIT Versioning tool for developers
> my daily most used commands

Here are some git commands, that I NOT used daily. Mainly i use the zsh git plugin with all the useful short commands
(alias) like `gs # git status` and `gcd # git checkout develop`. It is really handy and i love it.  

**Checkout a subdir of a git repository**
```bash
$ mkdir pcl-examples
$ cd pcl-examples #make a directory we want to copy folders to
$ git init #initialize the empty local repo
$ git remote add origin -f https://github.com/PointCloudLibrary/pcl.git #add the remote origin
$ git config core.sparsecheckout true #very crucial. this is where we tell git we are checking out specifics
$ echo "examples/*" >> .git/info/sparse-checkout #recursively checkout examples folder
$ git pull --depth=2 origin master #go only 2 depths down the examples directory
```

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
