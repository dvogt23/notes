# GIT Versioning tool for developers
> my daily most used commands

## Ignoring bulk change commits with git blame (>git 2.23)

Ignore revs after bulk changes (ie style, format) in git blame:

```sh
touch .git-blame-ignore-revs # put commit ids here
git config --global blame.ignoreRevsFile .git-blame-ignore-revs # set file as default to ignore
```

Source: [moxio](https://www.moxio.com/blog/43/ignoring-bulk-change-commits-with-git-blame)

## Highly recommended

The usage of aliases from git plugin/oh-my-zsh: [git-plugin](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh) zsh-load: [zinit](https://github.com/dvogt23/dotfiles/blob/master/zsh/.zshrc#L40)

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
