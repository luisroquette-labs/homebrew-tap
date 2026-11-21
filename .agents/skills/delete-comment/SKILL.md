---
name: delete-comment
description: Audit tracked code comments, remove tautologies and stale notes, file issues for excuses, move decisions to ADRs, and tighten the comment ratchet.
---

# Delete comments

1. Run `ruby scripts/check_comments.rb` and inspect every tracked Ruby comment with its surrounding code. Keep Ruby magic directives when they affect behavior.
2. Delete tautologies and stale comments. Delete excuses and open an issue with the underlying implementation problem. Move non-obvious decisions into `adr/`.
3. Keep the Ruby comment ratchet at zero. Add a focused regression when changing the checker.
4. Run `sh scripts/preflight.sh`, review the diff, and deliver through the repository's branch and PR flow.
5. Report removed comment lines, remaining required directives, ADR and issue links, and the estimated removable line count.
