# GIT Versioning tool for developers
> my daily most used commands

## Reducing size of git repository with git-replace

For reporitories with a huge history it takes a long time to clone this whole
git overhead.

It relativy easy to spilit your history from one commit to a completly other
repository.

1. Create new repository (destination for your old history)
1. Add this repository url to your huge repo:
  `git remote add project-history C:\repos\git-replace\history`
1. Create a history branch from your latest commit (first commit of history repo)
  `git branch history 590f4d3`
1. Push this branch to history-repo
  `git push project-history history:main`
1. Reduce size of main repo
  `git commit-tree -m "For historic commits, run 'git replace <child-ID> 590f4d3'" "590f4d3~^{tree}"
d3bee05dac84c66b7d13f99a5edf790688f51494`
  `git rebase 590f4d3~ --onto d3bee05  --rebase-merges`
1. Push small size to origin
  `git push origin main --force-with-lease`
1. Clone fresh repo and add history repo to main as a branch
  `git remote add project-history C:\repos\git-replace\history`
  `git fetch project-history`
  `git branch history project-history/main`
1. Replace a commit from main to history for connection
  `git replace 92305a9 590f4d3`
1. Delete replacement
  `git replace -d 92305a9`

Source: [andrewlock.net](https://andrewlock.net/reducing-the-size-of-a-git-repository-with-git-replace/)

## Articles
- [Under the hood](https://articles.foletta.org/post/git-under-the-hood/)
## Tools
- [git-spice](https://github.com/abhinav/git-spice) - stack branches, keep update
## Git bisect

Find a bad commit with `git bisect` just run this command on a commit and mark them as `git bisect good/bad` checkout another and run again `git bisect good/bad`. 
`git bisect` is able to find your first `bad` commit with i.e. `git bisect run bin/rails rspec <FILE>` and mark commit `good/bad` with the exitcode of your command.
## Commit to an older hash
Run: `git-amend.sh <older-hash>`

```bash git-amend.sh
hash=$1
git add .
git commit --fixup $hash
# 'GIT_EDITOR=true' makes the rebase non-interactive
GIT_EDITOR=true git rebase -i --autosquash $hash^
```

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
