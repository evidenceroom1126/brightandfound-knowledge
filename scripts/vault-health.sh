#!/usr/bin/env bash
# vault-health.sh (Bright & Found edition) . the deterministic vault consistency check.
# Adapted from the Regulars original 2026-07-31. It compares sources that MUST agree by
# construction and fails loud when they drift. No hardcoded counts (one fact, one home):
# it cross-checks live sources against each other, never against a number typed in here.
#
# Run it as the mechanical half of the end-of-session verification sweep, or any time.
# Usage: bash scripts/vault-health.sh   (run from the Knowledge/ repo root)

set -uo pipefail
cd "$(dirname "$0")/.." || exit 1
FAIL=0
pass() { printf '  \033[32mPASS\033[0m %s\n' "$1"; }
fail() { printf '  \033[31mFAIL\033[0m %s\n' "$1"; FAIL=1; }
info() { printf '  ---- %s\n' "$1"; }

echo "== 1. Git working tree =="
if [ -z "$(git status --porcelain)" ]; then pass "clean, nothing uncommitted"
else fail "uncommitted changes present:"; git status --porcelain | sed 's/^/       /'; fi

echo "== 2. CHECKLIST open-count header matches the actual struck count =="
HDR=$(grep -oE 'Open: [0-9]+ of [0-9]+' BrightAndFound/CHECKLIST.md | head -1)
TOTAL=$(grep -cE '^[0-9]+a?\. ' BrightAndFound/CHECKLIST.md)
STRUCK=$(grep -cE '^[0-9]+a?\. ~~' BrightAndFound/CHECKLIST.md)
OPEN=$((TOTAL - STRUCK))
if [ "$HDR" = "Open: $OPEN of $TOTAL" ]; then pass "header '$HDR' matches script ($OPEN of $TOTAL, $STRUCK struck)"
else fail "header says '$HDR' but script counts Open: $OPEN of $TOTAL ($STRUCK struck)"; fi

echo "== 3. MEMORY.md session-ritual steps number cleanly (no collisions) =="
RITUAL_CHECK=$(python3 - <<'PY'
import re
lines=open('MEMORY.md').read().splitlines()
inr=False; nums=[]
for ln in lines:
    if ln.startswith('## Session ritual'): inr=True; continue
    if inr and ln.startswith('## '): break
    m=re.match(r'^(\d+)\. ', ln)
    if inr and m: nums.append(int(m.group(1)))
print('OK '+' '.join(map(str,nums)) if nums==list(range(1,len(nums)+1)) else 'BAD '+' '.join(map(str,nums)))
PY
)
if [ "${RITUAL_CHECK%% *}" = "OK" ]; then pass "ritual steps sequential: ${RITUAL_CHECK#OK }"
else fail "ritual step numbering is [${RITUAL_CHECK#BAD }] (not 1..n)"; fi

echo "== 4. Style sweep: no em or en dashes anywhere in the vault =="
DASHES=$(python3 - <<'PY'
import os
hits=0
for root,dirs,files in os.walk('.'):
    dirs[:]=[d for d in dirs if d not in ('.git','.obsidian')]
    for f in files:
        if not f.endswith('.md'): continue
        p=os.path.join(root,f)
        try: t=open(p,encoding='utf-8').read()
        except Exception: continue
        n=t.count('\u2014')+t.count('\u2013')
        if n: hits+=n; print(f'{p}: {n}')
print(f'TOTAL {hits}')
PY
)
if [ "$(echo "$DASHES" | tail -1)" = "TOTAL 0" ]; then pass "no em/en dashes in any .md file"
else fail "em/en dashes found:"; echo "$DASHES" | sed '$d' | sed 's/^/       /'; fi

# --- Live Shopify cross-checks (enable once the store exists) ---
# Pattern from the Regulars original: compare the live platform against the vault's own
# claims. Once the store is up, add checks like:
#   published product count from the Admin API  vs  the SKU table in Reference/margin-sheet.md
#   active Klaviyo flow count                   vs  the flow list in Reference/email-flows.md
#   live site pages (curl the sitemap)          vs  the page list in STATUS.md
# Each check reads BOTH sides live and fails loud on drift. Tokens live outside the repo
# (e.g. ~/.config/brightandfound/), never in this file.
TOKEN_FILE="$HOME/.config/brightandfound/shopify-admin.token"
if [ -f "$TOKEN_FILE" ]; then
  info "Shopify token present; live cross-checks not yet written (add them at checklist item 14)"
else
  echo "== 5. Live Shopify cross-checks SKIPPED (no token at $TOKEN_FILE; expected pre-store) =="
fi

echo
if [ "$FAIL" -eq 0 ]; then printf '\033[32mvault-health: PASS\033[0m . record and reality agree.\n'
else printf '\033[31mvault-health: FAIL\033[0m . reconcile the items above before wrapping.\n'; fi
exit $FAIL
