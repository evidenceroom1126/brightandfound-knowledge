# Bright & Found: Business Plan v1

_Aromatherapy and holistic living store. Curated dropship first, private label once the data
earns it. This plan was derived 2026-07-31 from the Regulars operating system and adapted for
ecommerce. Every number in it is an assumption until real orders replace it. Mark unknowns
unknown._

## The one-liner

Bright & Found sells calm: essential oil blends, diffusers, candles, and self-care ritual kits,
wrapped in a brand and a content engine that big generic dropshippers cannot fake. Goal for
year one: a store that clears $2,000/month in gross profit on organic traffic before a single
ad dollar is spent.

## Honest odds, stated up front

Dropshipping aromatherapy is a crowded, low-barrier market. Most stores in it fail because they
compete on the product, and the product is identical everywhere. The plan survives that only if
three things hold:

1. **The brand is the product.** Curation, education, and ritual framing. The store sells "the
   wind-down hour," never "10ml lavender oil."
2. **Content is the moat.** An Astro blog that actually ranks for long-tail aromatherapy
   questions is an asset competitors on Shopify themes rarely build.
3. **Dropship is a validation phase.** The moment 2 to 3 SKUs prove demand, they move to
   private label or bulk inventory for margin and quality control. Dropship forever is a
   treadmill.

If none of the three feel true after 90 days of honest effort, the revisit condition in
decisions.md fires and the model gets rethought. That is a feature of the system.

## The offer

### Product ladder

| Rung | What | Why |
|---|---|---|
| 1. Curated dropship | Diffusers, oil blends, candles, rollers, bath goods from vetted US/EU suppliers | Validate demand with near-zero inventory risk |
| 2. Kits and bundles | "Sleep Ritual Kit," "Desk Reset Kit," "Home Spa Night" assembled from rung 1 | Raises AOV, differentiates, hard to price-compare |
| 3. Private label | Top 2-3 proven SKUs re-sourced with Bright & Found branding | Margin jumps, quality control, real brand equity |

### Sub-niche focus at launch

Pick ONE lane for the first 90 days (research task in the checklist decides which):

- **Sleep and wind-down** (largest search volume, strongest gift angle)
- **Focus and workspace** (desk diffusers, untapped office gifting)
- **Home spa / self-care ritual** (highest AOV potential via kits)

One lane means the homepage, the blog, and the first 20 products all agree on who the customer
is. Expansion comes from data, never from restlessness.

## Compliance (read before writing any product copy)

Aromatherapy sits on an FDA fault line and this section is load-bearing:

- **No disease or treatment claims, ever.** "Treats anxiety," "cures insomnia," "relieves
  pain" legally converts the product into an unapproved drug. Allowed framing: "part of your
  wind-down routine," "a calming scent for the evening." When in doubt, describe the scent and
  the ritual, never the body.
- **Cosmetic labeling rules (FPLA) apply** to anything applied to skin. Private-label rung
  must plan for compliant labels; dropship rung must verify supplier labels.
- **Safety content is trust content.** Dilution guidance, pet safety (many oils are toxic to
  cats and dogs), pregnancy cautions, child warnings. Publish a safety hub page; it ranks,
  and it protects.
- **Supplier proof:** require GC-MS reports or COAs from any oil supplier before listing.
  A supplier who cannot produce one is disqualified.
- **Product liability insurance** before the first real sale (checklist gates this).
- Review claims language with the humanizer/copy pass AND a compliance pass. Two different
  sweeps, both required.

## Stack

Derived from the Regulars TOOLS.md pattern: Adopted means in the stack, Evaluating means it
must earn its place. IMPLEMENTED.md tracks what is actually connected.

| Tool | Status | Used for |
|---|---|---|
| Obsidian + git | Adopt | The Knowledge vault, the brain (MEMORY.md pattern) |
| Claude Code | Adopt | The working partner. Session rituals in CLAUDE.md |
| Shopify (Basic) | Adopt | Checkout, payments, order routing, dropship app integration. The commerce backend |
| Spocket / Zendrop / CJ | Evaluate all three, adopt one | Supplier sourcing with US/EU warehouses for 2-7 day shipping. AliExpress-direct is disqualified (shipping times kill trust) |
| Astro + TinaCMS | Adopt | The brand site and blog on Cloudflare Pages. The content moat. Connects to Shopify via Storefront API (Buy Button embeds are the simpler fallback) |
| Cloudflare Pages | Adopt | Hosting the Astro site, ~$0 |
| Klaviyo | Adopt | Email flows: welcome, abandoned cart, post-purchase, winback. The ecommerce standard. (Regulars dropped it because GHL duplicated it; Bright & Found has no GHL, so the logic inverts) |
| Canva | Adopt | Product graphics, social assets, on the brand kit |
| Judge.me or Loox | Evaluate | Review collection with photos |
| TikTok / IG / Pinterest | Adopt (organic only at launch) | Short-form ritual content; Pinterest is quietly strong for this vertical |
| Wave | Adopt | Bookkeeping |
| Skills: impeccable, frontend-design, ui-ux-pro-max, humanizer, web-design-guidelines, dataviz | Adopt | Design and copy quality in every build session |
| MCPs: Shopify dev MCP, chrome-devtools, shadcn, Canva | Adopt / evaluate | See SETUP-GUIDE.md |
| Paid ads (Meta/TikTok) | Blocked until gate | Only after organic proof AND per-order margin is known. Ads on unproven margin is how dropship stores die |

## Unit economics (all inferred, replace with real data)

Assumptions to validate, in the model's own language: marked inferred until orders exist.

| Line | Assumption | Status |
|---|---|---|
| AOV | $45 (driven by kits; single-SKU stores sit near $25) | inferred |
| Product cost + shipping | 40% of AOV ($18) | inferred |
| Payment + app fees | 6% ($2.70) | inferred |
| Contribution per order | ~$24 before marketing | inferred |
| Fixed monthly (Shopify, Klaviyo, apps, domain) | $80-120 | inferred |
| Break-even | ~5 orders/month; $2k gross profit goal needs ~85 orders/month | derived from the above |

Rules that follow from the math:

- Under ~$20 contribution per order, paid ads cannot work. Organic first is forced by the
  numbers, never by ideology.
- Kits are the AOV lever. Every merchandising decision gets tested against "does this move
  AOV or margin."
- The margin sheet lives in the vault and updates with every supplier quote. One fact, one
  home.

## Marketing engine

1. **SEO content (the compounding asset).** Astro blog, 2 posts/week minimum. Long-tail
   questions: "essential oils safe for cats," "lavender vs chamomile for sleep," "how to
   clean a diffuser." Every post links to a product or kit. 90-day horizon before results;
   that is normal and gets written in decisions.md so nobody panics at day 30.
2. **Short-form video.** Daily-ish TikTok/IG/Pinterest: ritual aesthetics, unboxing samples,
   safety myths. Repurpose across all three.
3. **Email (Klaviyo).** Four flows before launch: welcome (with a ritual guide lead magnet),
   abandoned cart, post-purchase (usage + safety + review ask), winback. Flows outearn
   campaigns; build flows first.
4. **Reviews with photos** from day one via the review app; seed with sample-based
   friends-and-family orders that are disclosed honestly.
5. **Paid ads** unlock only at the gate: 30 consecutive days of organic orders AND verified
   per-order contribution margin. Then start with $10/day retargeting, never cold prospecting.

## Launch phases

The CHECKLIST.md spine holds the numbered items; this is the shape:

- **Phase 0, Foundations:** HQ + vault + operating system live, brand and niche research done.
- **Phase 1, Product:** suppliers vetted with samples in hand and a test order shipped to a
  real address. No SKU lists without a sample touched and smelled.
- **Phase 2, Build:** Shopify + Astro/Tina site, comps judged in the browser, compliant copy,
  policies, flows, QA on real phones.
- **Phase 3, Money and legal gate:** LLC, EIN, bank account, insurance, sales tax decision,
  end-to-end test purchase. Deliberately sequenced here, just before the first dollar, never
  front-loaded.
- **Phase 4, Launch:** soft launch, content cadence, weekly metrics ritual, review engine,
  ads gate.

## What v1 deliberately excludes

- Paid ads (gated, above).
- Private label (rung 3 waits for rung 1 data).
- Marketplaces (Amazon/Etsy) until the own-site engine works; they are channels, never the brand.
- Subscriptions (a strong v2 candidate for oils, premature at v1).
- Any AI automation touching real customers unattended. Build and test against test data
  freely; unattended agents need explicit per-case approval, same rule as Regulars.

## The operating system

The plan runs on the system in this kit: CLAUDE.md (the operating instructions), MEMORY.md
(the vault brain), CHECKLIST.md (the only to-do list), SETUP-GUIDE.md (day-one mechanical
setup), scripts/vault-health.sh (the deterministic honesty check). The system is the real
inheritance from Regulars; the store is just the first thing it builds.
