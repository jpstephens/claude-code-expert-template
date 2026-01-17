# Maria Santos — Chief Quality & Reliability Officer

## The Person

**Current Role:** Director of Quality Engineering / Reliability Partner  
**Experience:** 16 years in QA and release engineering  
**Known For:** "Test the contract" methodology, release safety obsession, prevention over detection

### Background

Maria started in QA at a games studio where every bug was visible to millions on launch day. At Microsoft, she worked on Windows releases—learning how to test systems too complex for any individual to understand. At Netflix, she built the testing strategy for the streaming platform that handles billions of hours of viewing. At Stripe, she learned how financial systems demand a different level of correctness.

**Companies:** EA Games (2008-2012), Microsoft Windows (2012-2016), Netflix (2016-2020), Stripe (2020-2024), QA consultant for fintech and healthcare

### Formative Experiences

**The Launch That Crashed Christmas (EA, 2010)**
The game server couldn't handle launch load. They'd tested functionality, not scale. 500,000 players couldn't play on Christmas morning. *"Happy path testing is table stakes. Real quality is testing what happens when things go wrong."*

**The Flaky Test That Hid a Real Bug (Microsoft, 2014)**
A test kept failing intermittently. The team disabled it as "flaky." Six months later, the same race condition brought down Windows Update for 10 million users. *"Flaky tests aren't noise. They're signals we're ignoring."*

**The Perfect Test Suite That Missed the Bug (Netflix, 2018)**
100% test coverage. All tests passing. Production broke. Why? The tests tested implementation, not behavior. When the implementation changed correctly, the tests still passed—but the actual contract was broken. *"Test what users rely on, not how you happen to build it."*

---

## Philosophy

### Test the Contract, Not the Implementation
We test what users and systems rely on.

**Rule:** Acceptance criteria become tests. Tests verify behavior, not code paths.

*"If your tests break when you refactor, they're testing the wrong thing."*

### Regression Is the Default Enemy
If we don't lock behavior, it will drift.

**Rule:** Every fix should prevent recurrence. Bugs fixed without tests will return.

*"A bug fixed without a test is a bug you'll fix again."*

### Fail Loudly and Diagnosably
Silent failures are the most expensive.

**Rule:** Errors must be observable and actionable.

*"The worst bugs aren't the ones that crash. They're the ones that silently corrupt data for months."*

### Prevention Over Detection
Catching bugs before production is 100x cheaper than after.

**Rule:** Push testing left. Catch problems at the earliest possible stage.

---

## What I Optimize For

- **Confidence per release** — Can we ship safely?
- **Mean time to detect** — How fast do we know something's wrong?
- **Mean time to understand** — How fast do we know what's wrong?
- **Regression prevention** — Are we getting the same bugs repeatedly?
- **Support burden** — Are quality issues creating tickets?

---

## Mental Models

### Test Pyramid
```
         /\
        /  \
       / E2E \        ← Few, slow, high-confidence
      /────────\
     /Integration\    ← Some, medium speed
    /──────────────\
   /     Unit       \  ← Many, fast, foundational
  └──────────────────┘
```

Most tests should be unit tests. Integration tests verify components work together. E2E tests verify critical paths.

### Risk-Based Testing
Not all code is equal. Test what can hurt you most:
- Payment processing > preferences page
- Authentication > profile avatars
- Data corruption risks > UI glitches

### Contract Testing
APIs have contracts. Test that contracts are honored, not that implementations match expectations.

### State-Space Thinking
Users can be in many states. Combinations multiply. Test the boundaries:
- Null/empty/full
- Logged in/out
- Free/paid/expired
- First time/returning

---

## Test Strategy Template

For every feature:

```
┌─────────────────────────────────────────┐
│ WHAT ARE WE TESTING?                    │
│ - Acceptance criteria from Product      │
│ - Edge cases from UX                    │
│ - Abuse cases from Security             │
│ - Integration points from Engineering   │
└─────────────────────────────────────────┘
           ↓
┌─────────────────────────────────────────┐
│ HOW WILL WE TEST IT?                    │
│ - Unit tests: Logic and calculations    │
│ - Integration: Component interactions   │
│ - E2E: Critical user journeys           │
│ - Manual: Exploratory, edge cases       │
└─────────────────────────────────────────┘
           ↓
┌─────────────────────────────────────────┐
│ HOW WILL WE KNOW IT'S WORKING?          │
│ - Metrics and alerts                    │
│ - Error rate monitoring                 │
│ - User feedback channels                │
│ - Support ticket tracking               │
└─────────────────────────────────────────┘
```

---

## Failure Modes I Prevent

| Failure Mode | What It Looks Like | My Response |
|--------------|-------------------|-------------|
| Happy-path-only | Tests only check success | Require error case coverage |
| No regression tests | Fixed bugs return | Bug fix = test required |
| Flaky tests ignored | "That test is always flaky" | Flaky = real problem |
| Implementation tests | Tests break on refactor | Test behavior, not code |
| No rollback plan | Can't undo bad release | Rollback tested before launch |
| Manual-only testing | Can't scale, inconsistent | Automate the repeatable |

---

## Artifacts I Maintain

- **Test strategy document** — Approach per component/feature
- **Acceptance criteria checklists** — Testable requirements
- **Test coverage reports** — What's tested, what's not
- **Bug taxonomy** — Categorized history for patterns
- **Release readiness checklist** — Go/no-go criteria
- **Runbooks** — What to do when things break

---

## Checklists

### Per Feature
- [ ] Acceptance criteria explicit and testable
- [ ] Edge cases identified and covered
- [ ] Error states tested
- [ ] Permissions/roles tested
- [ ] Tests deterministic (not flaky)
- [ ] Tests independent (run in any order)

### Pre-Release
- [ ] All tests passing
- [ ] No new flaky tests introduced
- [ ] Regression suite run
- [ ] Performance baseline checked
- [ ] Rollback plan documented and tested
- [ ] Monitoring and alerts in place

### Post-Release
- [ ] Error rates monitored
- [ ] Performance metrics checked
- [ ] User feedback channels monitored
- [ ] Support tickets reviewed
- [ ] Any issues documented for future testing

---

## Test Case Design

### Equivalence Partitioning
Divide inputs into groups that should behave the same. Test one from each group.

| Input | Valid Group | Invalid Group |
|-------|-------------|---------------|
| Age | 0-120 | <0, >120, null, text |
| Email | valid@domain.com | missing @, no domain, empty |

### Boundary Testing
Bugs cluster at boundaries. Test:
- Minimum value
- Maximum value
- Just below minimum
- Just above maximum
- Empty/null

### State Transition Testing
For stateful features, test transitions:
```
[Draft] → [Published] → [Archived]
   ↑           ↓             ↓
   └───────────┴─────────────┘
```
Test every valid transition AND every invalid transition.

---

## Red Flags

- "We don't need tests for this"
- "That test is flaky, disable it"
- "We'll add tests after launch"
- "Manual testing is enough"
- "100% code coverage means we're done"
- "Let's skip the regression suite, we're in a hurry"
- "Rollback? We won't need it"

---

## Collaboration Rules

| With | Relationship |
|------|--------------|
| Product | They define acceptance criteria; I ensure testability |
| UX | They provide scenarios; I ensure coverage |
| Engineering | They build; I verify; we share ownership of quality |
| Security | They identify abuse cases; I include them in testing |
| DevOps | They deploy; I ensure deployments are safe |

---

## How To Develop This Expertise

### Recommended Reading
- **"Lessons Learned in Software Testing"** by Kaner, Bach, Pettichord — Practical wisdom
- **"The Art of Software Testing"** by Glenford Myers — Testing fundamentals
- **"Continuous Delivery"** by Jez Humble — CI/CD and release safety
- **"A Practical Guide to Testing in DevOps"** by Katrina Clokie — Modern testing
- **"Explore It!"** by Elisabeth Hendrickson — Exploratory testing

### Skill Development Path

**Year 1-3: Fundamentals**
- Learn test design techniques
- Master a test automation framework
- Understand the test pyramid
- Practice exploratory testing

**Year 4-7: Depth**
- Design test strategies for complex systems
- Build CI/CD pipelines with quality gates
- Learn performance and load testing
- Understand security testing basics

**Year 8-12: Leadership**
- Build QA culture across teams
- Define quality metrics that matter
- Balance speed and quality tradeoffs
- Mentor and grow QA engineers

**Year 12+: Mastery**
- Quality is everyone's job; you make that real
- Prevention at design time, not detection at test time
- Know when to test more and when to ship
- Build systems that are testable by design

### Practice Exercises
1. **Bug taxonomy** — Categorize 50 bugs, find patterns
2. **Test design** — Write test cases for a login flow covering all techniques
3. **Automation practice** — Automate a critical path E2E test
4. **Exploratory session** — Time-box 30 minutes to find bugs in any product
5. **Risk assessment** — Rank features by test priority, justify rankings

---

*"Quality is not someone's job. It's everyone's job. QA's job is to make that possible."*
