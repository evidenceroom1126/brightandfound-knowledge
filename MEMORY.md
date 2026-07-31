# MEMORY

_This file is the AI's brain for the Bright & Found vault. Read it first, every session. It
says where everything lives and how to work here. It is short on purpose. Seeded 2026-07-31
from the Regulars pattern; place it at `Knowledge/MEMORY.md`._

## The project in one line

Bright & Found is an aromatherapy and holistic living store, curated dropship first, private
label once proven, run by one person. Goal: $2,000/month gross profit on organic traffic
before any ad spend. No store yet. Focus right now: **finish the setup and get launch-ready.**

## The files

| File | Job |
|---|---|
| [[README]] | Stable overview. What, who, why, links, how AI should help. |
| [[STATUS]] | Current snapshot. Where things stand, next action, blockers. |
| [[progress]] | Diary. Dated log of what happened. Never edited after the fact. |
| [[decisions]] | What was decided, why, when to revisit. **Read before reopening anything.** |
| [[CHECKLIST]] | The only to-do list. One numbered chronological spine. |
| [[TOOLS]] | Which tools serve which action area. |
| [[IMPLEMENTED]] | What is actually connected and working today. |
| [[brand-kit]] | Colors, type, voice. Use for every product page, post and asset. |
| `BrightAndFound/Reference/` | The engines: supplier vetting, claims/compliance rules, margin sheet, Shopify build notes, email flow specs. |
| `BrightAndFound/Workspaces/` | Scratch areas: content, strategy, product-research. |

## Session ritual

1. **Start:** read this file, then [[STATUS]], then [[CHECKLIST]].
2. **Before any build, design or content task, open [[TOOLS]] and use its toolbox for that
   action area.** Site builds follow the build order in `Reference/site-build.md`
   (frontend-design + impeccable + shadcn where it fits, then the web-design-guidelines
   audit, then the Chrome DevTools pass; humanizer AND the claims sweep on every piece of
   customer-facing copy).
3. **Work: the verification loop, on every single step** (the most important rule here).
   **Before** a step: say why it exists, confirm it still makes sense, and check its
   preconditions actually hold. **After** it: observe the output working (load the page,
   place the test order, watch the email arrive), never infer it. Only then is it ticked.
4. **During work:** [[STATUS]] rides the same cadence as the commit rule. When a meaningful
   change lands, update [[STATUS]] in that same change and commit it with the rest.
5. **End:** **run the session verification sweep first**, then tick [[CHECKLIST]], confirm
   [[STATUS]] is already current, log the day in [[progress]], record any decision in
   [[decisions]]. Commit `Knowledge/` after each meaningful change with a one-line message,
   and push to the private remote at every wrap.
6. **The session verification sweep** (every wrap-up): before ticking anything, confirm five
   things for each item completed this session: it was done, done correctly, its why still
   holds, it is still relevant, and **it works, observed live, never inferred.** Check live
   state (Shopify admin, the served site, a real inbox, the supplier dashboard), never the
   session's own notes. Any failure gets said plainly and the record corrected before the
   item is struck. **Its mechanical half is `bash scripts/vault-health.sh`** from the
   `Knowledge/` root; the judgment half stays yours.

## Hard rules

- **Never touch `Passwords/`.** Never commit secrets, `.env`, or `.mcp.json`.
- **No disease or treatment claims in any copy, ever** (`Reference/claims-rules.md`). This is
  the legal load-bearing wall of the whole business.
- **No em dashes, no "X, not Y" antithesis constructions**, anywhere. They read as
  machine-written.
- **One fact, one home.** When something changes, grep for every other mention and fix those
  too. **A decision is done when it has propagated.**
- **Replace wrong text. Never append a correction.**
- **Every listed SKU has been sampled in hand.** No sample, no listing.
- **Paid ads are gated** until 30 consecutive days of organic orders and verified per-order
  margin.
- Deterministic automation is green anywhere it reduces work. AI on real customers or real
  sends unattended needs explicit per-case approval.
- Deleted material is in git history. Rebuild rather than mourn.

## Current standing constraints

- Every revenue, margin and hour figure in this vault is inferred until 30 days of real
  orders replace it.
- Entity paperwork (LLC, EIN, bank, insurance) sits just before the first sale in the
  checklist, deliberately.
