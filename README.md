# Expert Panel System for Claude Code

A battle-tested system that transforms Claude into a panel of seasoned experts—each with 15-20+ years of real-world experience at companies like Google, Amazon, Stripe, Apple, and Airbnb.

## Why This Exists

Most projects fail not from lack of effort, but from lack of perspective. A solo founder doesn't have a security team. A small startup doesn't have a CFO. A developer doesn't always think about SEO.

This system gives you access to 11 expert perspectives on demand—each with real mental models, hard-won lessons, and specific checklists developed over decades at top companies.

## Quick Start

1. Copy this folder to your project root
2. Run `claude` in your terminal
3. Claude automatically reads `CLAUDE.md` and becomes the expert panel
4. Ask for specific experts or run full panel reviews

## The Expert Panel

| Expert | Name | Background | Specialty |
|--------|------|------------|-----------|
| **Product** | Sarah Chen | Stripe, Airbnb, Amazon | Outcomes over features |
| **UX** | Marcus Webb | Apple, IDEO, Khan Academy | Error states & accessibility |
| **UI** | Yuki Tanaka | Google Material, Figma, Shopify | Design systems at scale |
| **Brand** | David Okonkwo | Nike, Apple, Stripe | Trust & credibility |
| **Copy** | Elena Rodriguez | Mailchimp, Slack, Headspace | Clarity & microcopy |
| **Marketing** | James Morrison | HubSpot, Dropbox, Notion | CAC-efficient growth |
| **SEO** | Rachel Kim | Airbnb, Zillow, NerdWallet | Technical SEO & architecture |
| **Security** | Alex Petrov | Google, Cloudflare, 1Password | Assume breach doctrine |
| **QA** | Maria Santos | Netflix, Microsoft, Stripe | Contract testing & reliability |
| **Engineering** | Chris Nakamura | Amazon, Meta, Datadog | Boring technology wins |
| **Finance** | Katherine Liu | a16z, 3 exits as CFO | Unit economics & runway |

## Directory Structure

```
your-project/
├── CLAUDE.md                      # Main instructions (auto-loaded)
├── .claude/
│   └── roles/
│       ├── product_manager.md     # Sarah Chen's expertise
│       ├── ux_designer.md         # Marcus Webb's expertise
│       ├── ui_designer.md         # Yuki Tanaka's expertise
│       ├── branding_expert.md     # David Okonkwo's expertise
│       ├── copywriter.md          # Elena Rodriguez's expertise
│       ├── marketing_lead.md      # James Morrison's expertise
│       ├── seo_expert.md          # Rachel Kim's expertise
│       ├── security_engineer.md   # Alex Petrov's expertise
│       ├── qa_engineer.md         # Maria Santos's expertise
│       ├── engineering_lead.md    # Chris Nakamura's expertise
│       └── cfo.md                 # Katherine Liu's expertise
└── docs/
    ├── project_plan.md            # Product's artifact
    ├── design.md                  # UX/UI's artifact
    ├── implementation_plan.md     # Engineering's artifact
    └── gtm_plan.md                # Marketing's artifact (create when needed)
```

## How to Use

### Single Expert Review
```
"Review this from Sarah's [Product] perspective"
"What would Alex [Security] think about this auth flow?"
"Apply Marcus's [UX] lens to this onboarding"
"Get Katherine's [Finance] take on this pricing model"
```

### Multi-Expert Review
```
"Have Chris [Engineering] and Alex [Security] review this API design"
"Get Elena [Copy] and David [Brand] to align on this messaging"
"Run Product + UX + Engineering review on this feature spec"
```

### Full Panel Review
```
"Run full panel review on this launch plan"
"Pre-mortem with all experts"
"Gate 4 checklist: Are we ready to launch?"
```

### By Gate
```
"Gate 1: Is this problem worth solving?"
"Gate 2: Is this the right solution?"
"Gate 3: Did we build it right?"
"Gate 4: Are we ready to ship?"
```

## What Each Expert Brings

### Product (Sarah Chen)
- Jobs-to-be-Done framework
- Outcome-based roadmapping
- Ruthless prioritization
- *"If we can't measure it, we can't ship it"*

### UX (Marcus Webb)
- Error-state-first design
- Accessibility as quality
- Cognitive load management
- *"If you haven't designed the error state, you haven't finished designing"*

### UI (Yuki Tanaka)
- Token-based design systems
- Component state matrices
- Visual consistency at scale
- *"If it's not a token, it doesn't exist"*

### Brand (David Okonkwo)
- Voice & tone governance
- Trust-building through consistency
- Brand risk management
- *"Credibility beats cleverness"*

### Copy (Elena Rodriguez)
- Microcopy that converts
- Error messages users appreciate
- The 12-year-old test
- *"Every word earns its place"*

### Marketing (James Morrison)
- Positioning is strategy
- Channel efficiency
- CAC/LTV obsession
- *"When you talk to everyone, you talk to no one"*

### SEO (Rachel Kim)
- SEO is architecture
- Intent-based content
- Technical SEO fundamentals
- *"If you add SEO at the end, you already lost"*

### Security (Alex Petrov)
- Assume breach doctrine
- Least privilege defaults
- Threat modeling
- *"Security can override any decision"*

### QA (Maria Santos)
- Test the contract, not implementation
- Regression prevention
- Release safety
- *"A bug fixed without a test is a bug you'll fix again"*

### Engineering (Chris Nakamura)
- Boring technology wins
- Operability is a feature
- Interface-first design
- *"Complexity must pay rent"*

### Finance (Katherine Liu)
- Unit economics discipline
- Runway-aware decisions
- Scenario planning
- *"Cash is oxygen"*

## Authority Hierarchy

```
                Security (absolute veto)
                         │
        ┌────────────────┼────────────────┐
        │                │                │
    Finance ◄──────► Product ◄──────► Engineering
   (slow down)      (priority)        (feasibility)
        │                │                │
        │        ┌───────┴───────┐        │
        │        │               │        │
        └───► Marketing ──► UX ──► UI ◄───┘
                 │         │       │
                 │    ┌────┴────┐  │
                 │    │         │  │
                 └─► Brand ◄─► Copy
                       │
              ┌────────┴────────┐
              │                 │
             QA                SEO
```

## Red Flags (Auto-Escalated)

The panel will automatically raise concerns when they hear:

**Product:** "We'll measure it later" / "Let's target everyone"
**UX:** "Users will figure it out" / "Accessibility in v2"
**Engineering:** "We'll refactor later" / "It works on my machine"
**Security:** "Security later" / "It's internal, we don't need auth"
**Finance:** "Growth at all costs" / "We'll figure out the business model"
**Marketing:** "We need to be on every channel" / "Competitors are doing it"

## Customization

### Adding Domain Experts
Create a new file in `.claude/roles/` following the pattern:

```markdown
# [Name] — [Title]

## The Person
Background, experience, formative experiences

## Philosophy
Core beliefs and rules

## What I Optimize For
Priorities when tradeoffs arise

## Mental Models
Frameworks this expert applies

## Failure Modes I Prevent
Anti-patterns to catch

## Checklists
Concrete review criteria

## How To Develop This Expertise
Books, skills, exercises
```

### Adding Industry Context
Add to `CLAUDE.md`:

```markdown
## Industry Context
- Compliance: HIPAA / SOC 2 / PCI-DSS
- Audience: Enterprise / SMB / Consumer
- Stage: Pre-seed / Growth / Scale
```

## Philosophy Behind the System

1. **Expertise compounds** — Each expert brings patterns from decades of work
2. **Tension is productive** — Experts disagree; friction produces quality
3. **Checklists save lives** — Aviation proved this; software can learn
4. **Documentation is thinking** — If you can't write it clearly, you don't understand it
5. **Speed comes from clarity** — Slow down to speed up

## When to Break the Rules

Every expert knows rules encode wisdom, but wisdom includes knowing when rules don't apply.

Breaking a rule requires:
1. Explicit acknowledgment of which rule and why
2. Documentation in decisions
3. Agreement from the relevant expert
4. A mitigation plan for the accepted risk

## Credits

This system is inspired by:
- Amazon's "Working Backwards" methodology
- Google's design sprint frameworks
- The ADR (Architecture Decision Record) pattern
- The "Boring Technology" movement
- Decades of collective wisdom from YC, a16z, and top tech companies

## License

MIT — Use freely, modify as needed, build something great.

---

*"The goal is not process compliance. The goal is excellent outcomes. Process exists to make excellent outcomes more likely."*
