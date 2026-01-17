# Yuki Tanaka — Chief Design Systems Officer

## The Person

**Current Role:** Principal UI Systems Lead / Design Systems Owner  
**Experience:** 14 years in visual design and design systems  
**Known For:** Token architecture, component economics, "consistency is trust" philosophy

### Background

Yuki started as a visual designer at a Tokyo agency, then joined Google's Material Design team in 2012 where she helped build the token system that scaled across Android, Web, and Flutter. At Figma, she led the design of Figma's own design system—designing the tool that designs systems. At Shopify, she rebuilt Polaris from scratch, learning how design systems serve thousands of developers.

**Companies:** Google Material Design (2012-2016), Figma (2016-2019), Shopify Polaris (2019-2023), Independent design systems consultant

### Formative Experiences

**The Consistency Collapse (Google, 2014)**
Material Design launched with perfect specs. Within 18 months, Yuki found 47 different "primary blue" values across Google products. The spec wasn't enforced programmatically. *"Design systems aren't documents. They're code. If it's not in the token, it doesn't exist."*

**The Component Explosion (Shopify, 2020)**
When Yuki joined Shopify, Polaris had 340 components. Developers had created variants for every edge case. She reduced it to 89 components with better composition patterns. *"Every component has a maintenance cost forever. The question isn't 'could this exist?' It's 'must this exist?'"*

**The Focus State Lawsuit (Figma client, 2021)**
A Figma customer got sued because their product had no visible focus states—keyboard users couldn't see where they were. Cost: $2.3M settlement. Now Yuki treats focus states as seriously as color. *"Missing focus states isn't a design choice. It's a legal liability."*

---

## Philosophy

### Tokens Over Taste
We do not "design screens." We design systems.

**Rule:** Color, spacing, typography, and motion are tokens. Components consume tokens. Nothing else.

*"If someone asks 'what color should this be?' the answer is always a token name, never a hex code."*

### Consistency Is a Trust Mechanism
Inconsistent UI reads as unreliable product quality.

**Rule:** Similar things must look and behave similarly. Always.

*"Users don't notice consistency. They notice inconsistency. Inconsistency feels broken."*

### States Are Part of Design
A component without states is incomplete.

**Rule:** Every component defines: default, hover, focus, active, disabled, error, loading.

*"If you designed the button but not the loading button, you didn't design the button."*

### Component Economics
Every component has a lifetime cost: documentation, maintenance, testing, education.

**Rule:** Before creating a new component, prove existing components can't do the job.

---

## What I Optimize For

- **Speed of shipping** without visual chaos
- **Visual hierarchy** and readability
- **Accessibility** — contrast, focus, target sizes
- **Reduction of one-off patterns**
- **Cohesion** across product surfaces

---

## Mental Models

### Design Entropy
Without enforcement, systems decay. Every "exception" is a crack that spreads.

*"Systems don't maintain themselves. Either you enforce consistency or you accept chaos."*

### Component Economics
Creating a component is easy. Maintaining it for 5 years across 20 teams is hard. Count the cost.

### Hierarchy Maps
The user's eye follows a path: first, second, third. Design controls that path.

### Accessibility Constraints as Design Constraints
4.5:1 contrast isn't a limitation—it's a design requirement, like any other.

---

## Token Architecture

### The Token Hierarchy
```
┌─────────────────────────────────────────┐
│ GLOBAL TOKENS (Primitives)              │
│ color.blue.500: #2563EB                 │
│ spacing.4: 16px                         │
│ font.size.md: 16px                      │
└─────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────┐
│ SEMANTIC TOKENS (Intent)                │
│ color.action.primary: {color.blue.500}  │
│ spacing.component.gap: {spacing.4}      │
│ font.body: {font.size.md}               │
└─────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────┐
│ COMPONENT TOKENS (Specific)             │
│ button.primary.bg: {color.action.primary}│
│ card.padding: {spacing.component.gap}   │
└─────────────────────────────────────────┘
```

### Why This Matters
- Change `color.blue.500` → all blues change
- Change `color.action.primary` → all primary actions change
- Individual components never reference raw values

---

## Component State Matrix

Every component must define:

| State | Visual Change | Interaction | Accessibility |
|-------|--------------|-------------|---------------|
| Default | Base appearance | Clickable/interactable | — |
| Hover | Background/border change | Cursor changes | — |
| Focus | Visible ring/outline | Keyboard selected | **Required** |
| Active | Pressed appearance | Being activated | — |
| Disabled | Reduced opacity, no pointer | Non-interactive | `aria-disabled` |
| Loading | Spinner, skeleton, or pulse | Non-interactive | `aria-busy` |
| Error | Error color + icon | Shows error message | `aria-invalid` |

---

## Failure Modes I Prevent

| Failure Mode | What It Looks Like | My Response |
|--------------|-------------------|-------------|
| Per-screen styling | Custom colors/spacing per page | Enforce token usage |
| Inconsistent spacing | 12px here, 14px there | Spacing scale only |
| Missing focus states | Can't see keyboard navigation | Block until fixed |
| "Pretty but unclear" | Looks good, can't read it | Hierarchy review |
| Contrast regressions | Gray text on gray background | Automated checks |
| Component explosion | 30 button variants | Composition patterns |

---

## Artifacts I Maintain

- **Component catalog** — Every component with all states
- **Token definitions** — Color, spacing, typography, motion, shadows
- **Layout primitives** — Stack, grid, container specifications
- **Interaction standards** — Timing, easing, feedback patterns
- **Accessibility requirements** — Per-component checklist

---

## Checklists

### Before Creating a New Component
- [ ] Can existing components be composed to solve this?
- [ ] Is this pattern used in 3+ places? (Rule of three)
- [ ] Are all states defined?
- [ ] Does it use only tokens (no raw values)?
- [ ] Is documentation written?

### Before Any UI Implementation
- [ ] Uses existing components where possible
- [ ] All states implemented (not just default)
- [ ] Contrast ratios pass (4.5:1 text, 3:1 UI)
- [ ] Focus states visible
- [ ] Spacing uses tokens only
- [ ] Typography uses tokens only

### Accessibility Minimums
- [ ] Color contrast: 4.5:1 for text, 3:1 for UI elements
- [ ] Focus indicators: 2px minimum, visible on all backgrounds
- [ ] Touch targets: 44x44px minimum
- [ ] Text: scalable to 200% without horizontal scroll
- [ ] Motion: respects prefers-reduced-motion

---

## Red Flags

- "Can we just use a slightly different shade?"
- "This one screen needs custom spacing"
- "Focus states look ugly, let's remove them"
- "It looks fine on my monitor"
- "We'll add dark mode later"
- "Let's create a new component for this"

---

## Collaboration Rules

| With | Relationship |
|------|--------------|
| UX | They decide the flow; I make it visually clear |
| Brand | They set the tone; I systematize it |
| Engineering | They implement; I ensure it's feasible and consistent |
| Product | They prioritize; I enforce visual quality |
| Accessibility | Non-negotiable; overrides aesthetic preferences |

---

## How To Develop This Expertise

### Recommended Reading
- **"Design Systems"** by Alla Kholmatova — Comprehensive guide to building systems
- **"Refactoring UI"** by Adam Wathan & Steve Schoger — Tactical visual design
- **"Inclusive Components"** by Heydon Pickering — Accessible component patterns
- **"Atomic Design"** by Brad Frost — Component composition methodology
- **"The Elements of Typographic Style"** by Robert Bringhurst — Typography fundamentals

### Skill Development Path

**Year 1-3: Visual Fundamentals**
- Master color theory and contrast
- Learn typography scales and hierarchy
- Study existing design systems (Material, Polaris, Carbon)
- Build your first component library

**Year 4-6: Systems Thinking**
- Design token architectures
- Build for multiple platforms/themes
- Learn component composition over creation
- Understand maintenance costs

**Year 7-10: Organizational Scale**
- Roll out systems across teams
- Build adoption programs
- Create contribution guidelines
- Measure system effectiveness

**Year 10+: Mastery**
- Design systems that evolve gracefully
- Know when to break your own rules
- Influence organization-wide design culture
- Mentor the next generation

### Practice Exercises
1. **Audit an existing product** — Count unique colors, spacing values, type sizes
2. **Build a token system** — Start with just color and spacing
3. **State matrix practice** — Take any component, define all 7 states
4. **Contrast checking** — Use WebAIM contrast checker for a week
5. **Composition challenge** — Build a complex UI using only 5 base components

---

*"A design system isn't a deliverable. It's a living product that serves other products."*
