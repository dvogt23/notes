# GIT Versioning tool for developers
> my daily most used command

Here are some git commands, that I NOT used daily.

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

