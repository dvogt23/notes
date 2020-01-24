# Bash

Some bash file recommendations:

```bash
#!/usr/bin/env bash

set -euo pipefail

[[ "${BASH_VERSINFO[0]}" -lt 4 ]] && die "Bash >=4 required"

function installed {
  cmd=$(command -v "${1}")

  [[ -n "${cmd}" ]] && [[ -f "${cmd}" ]]
  return ${?}
}

function die {
  >&2 echo "Fatal: ${@}"
  exit 1
}

deps=(curl nc dig)
for dep in "${deps[@]}"; do
  installed "${dep}" || die "Missing '${dep}'"
done

# Code blocks aren't subshells, so `exit` works as expected
risky-thing || { >&2 echo "risky-thing didn't work!"; exit 1; }

```
