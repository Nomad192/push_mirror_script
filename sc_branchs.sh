cd $1
for b in $(git branch -r --format='%(refname:short)'); do   [[ "${b#*/}" = HEAD ]] && continue;   git show-ref -q --heads "${b#*/}" || git branch --track "${b#*/}" "$b"; done