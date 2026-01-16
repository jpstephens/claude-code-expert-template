# Project Kickoff Prompt

Save this prompt and use it to start every new project. It triggers the expert panel's discovery and interview process.

---

## The Prompt (Copy Everything Below the Line)

---

## 🚀 PROJECT KICKOFF: Expert Panel Discovery Session

I'm starting a new project and need the expert panel to help me think through it properly before we build anything.

**Project Idea:** [DESCRIBE YOUR PROJECT IN 1-2 SENTENCES]

**Initial Context:**
- Target users: [WHO IS THIS FOR?]
- Problem I'm solving: [WHAT PAIN POINT?]
- Why now: [WHY IS THIS TIMELY?]
- My constraints: [TIME, BUDGET, SKILLS, ETC.]

---

Please run a **Gate 1: Problem Validation** session with the relevant experts. I need you to:

### 1. Expert Interview Round
Have each relevant expert ask me 2-3 critical questions they need answered before we proceed. Don't assume—ask. Focus on:

- **Sarah (Product):** Is this problem worth solving? For whom? How will we measure success?
- **Katherine (Finance):** What's the business model? What are the unit economics assumptions?
- **Marcus (UX):** Who exactly is the user? What's their current workflow? What's their pain?
- **Alex (Security):** What data are we handling? What are the trust requirements?
- **Chris (Engineering):** What's the technical complexity? What are the constraints?

### 2. After I Answer
Once I've answered the questions:
- Identify any red flags or concerns
- Highlight assumptions we're making
- Recommend whether to proceed to Gate 2 (Solution Design)
- Create an initial `docs/project_plan.md` with what we know

### 3. What I Need From You
- Be direct—tell me if this is a bad idea
- Push back on fuzzy thinking
- Help me scope this to something achievable
- Don't let me skip steps that matter

---

Let's start with the expert questions. Which experts need to weigh in on this, and what do they need to know?

---

## Variations

### Quick Version (for smaller features)
```
I want to add [FEATURE] to [PROJECT]. Run a quick expert review:
- Product: Is this worth building?
- UX: What's the user flow?
- Engineering: What's the complexity?
- Security: Any concerns?

Give me a go/no-go recommendation with reasoning.
```

### Technical Deep Dive
```
I need Chris (Engineering) and Alex (Security) to review this technical approach:

[DESCRIBE TECHNICAL PLAN]

Questions:
1. What could go wrong?
2. What would you do differently?
3. What's missing from my thinking?
```

### Pre-Launch Review
```
We're ready to launch [PROJECT/FEATURE]. Run a Gate 4 review with all experts.

Here's what we've built: [SUMMARY]

Each expert: Give me your go/no-go with specific concerns or blockers.
```

### Copy & Messaging Review
```
I need Elena (Copy) and David (Brand) to review this messaging:

[PASTE YOUR COPY]

- Is it clear?
- Is it on-brand?
- What would you change?
- Does it pass the 12-year-old test?
```

### Financial Sanity Check
```
Katherine (Finance), I need you to stress-test these assumptions:

- Price point: [X]
- Expected CAC: [Y]
- Expected conversion: [Z]%
- Target market size: [N]

Does the math work? What's the bear case?
```

---

## Tips for Best Results

1. **Be specific** — "An app" is too vague. "A mobile app for busy parents to track kids' medication schedules" is better.

2. **Share constraints upfront** — "I have 2 weeks and no budget" changes everything.

3. **Answer honestly** — The experts can only help if you're honest about what you don't know.

4. **Embrace pushback** — If an expert says "this is a bad idea," listen. That's the point.

5. **Don't skip gates** — Gate 1 → Gate 2 → Gate 3 → Gate 4. Each matters.

6. **Update the docs** — After each session, make sure `docs/project_plan.md` reflects decisions.

---

## Example Kickoff

```
## 🚀 PROJECT KICKOFF: Expert Panel Discovery Session

I'm starting a new project and need the expert panel to help me think through it properly.

**Project Idea:** A browser extension that helps people unsubscribe from marketing emails in one click.

**Initial Context:**
- Target users: Busy professionals drowning in promotional emails
- Problem I'm solving: It takes too long to unsubscribe from emails, so people don't do it
- Why now: Email overload is at an all-time high, people are burnt out
- My constraints: Solo developer, 4 weeks to MVP, $0 budget, need to validate before investing more

Please run a Gate 1: Problem Validation session...
```

---

Save this file and reference it whenever you start something new!
