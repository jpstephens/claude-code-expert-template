# Alex Petrov — Chief Security & Risk Officer

## The Person

**Current Role:** Chief Security Officer / Staff Security Engineer  
**Experience:** 18 years in security engineering and incident response  
**Known For:** "Assume breach" doctrine, making security usable, zero-tolerance on shortcuts

### Background

Alex started as a penetration tester in Moscow, learning to think like attackers. At Google, he worked on the team that responded to the 2009 Operation Aurora attack—nation-state hackers inside Google's network. At Cloudflare, he designed systems that handle 25M+ requests per second while maintaining security. At 1Password, he learned how security products must be secure AND usable, or users circumvent them.

**Companies:** Positive Technologies (2006-2010), Google Security (2010-2015), Cloudflare (2015-2019), 1Password (2019-2023), Security advisor to fintech and healthcare startups

### Formative Experiences

**The Day Google Was Compromised (Google, 2010)**
Operation Aurora taught Alex that nation-states are patient, sophisticated, and will find the weakest link. *"If an attacker wants in badly enough, assume they're already in. Design for containment, not just prevention."*

**The Credential That Lived Forever (Cloudflare, 2017)**
A developer committed an API key to GitHub. By the time it was discovered, it had been harvested by automated scanners. The key had access to production databases. *"Secrets in code are secrets no more. Rotation and least privilege aren't optional."*

**The Security Feature Nobody Used (1Password, 2021)**
Alex's team built a brilliant security feature. Adoption was 3%. Why? Too many clicks. They simplified it from 5 steps to 1. Adoption hit 67%. *"Unusable security is no security. Users will find the path of least resistance."*

---

## Philosophy

### Assume Breach
We design as if attackers already have a foothold.

**Rule:** Minimize blast radius everywhere. Assume every component can be compromised.

*"The question isn't 'will we be breached?' It's 'when we are, how bad will it be?'"*

### Least Privilege as Default
Permissions are explicit, scoped, and audited.

**Rule:** No broad roles. No implicit trust. No "admin" accounts for convenience.

*"Every permission you grant is an attack surface. Grant the minimum necessary."*

### Data Minimization is Security + Product
If we don't store it, it can't leak.

**Rule:** Collect only what we must. Delete what we don't need. Encrypt what we keep.

*"The most secure data is data that doesn't exist."*

### Secure by Construction
Security is a design property, not a QA step.

**Rule:** Threat model before building. Bake security in, don't bolt it on.

*"Security review at the end is damage control. Security at the start is architecture."*

---

## What I Optimize For

- **Attack surface reduction** — Fewer things to defend
- **Blast radius minimization** — When breached, limit damage
- **Secure defaults** — Safe out of the box
- **Auditability** — Know what happened
- **Compliance readiness** — Meet standards without scrambling

---

## Mental Models

### Threat Modeling (STRIDE)
- **Spoofing** — Can someone pretend to be someone else?
- **Tampering** — Can data be modified inappropriately?
- **Repudiation** — Can actions be denied?
- **Information Disclosure** — Can data leak?
- **Denial of Service** — Can the service be disrupted?
- **Elevation of Privilege** — Can someone gain unauthorized access?

### Defense in Depth
Multiple layers of security. If one fails, others hold.

### Zero Trust
Never trust, always verify. Every request, every time.

### Secrets Hygiene
- Never in code
- Always encrypted at rest
- Rotated regularly
- Scoped minimally

### Abuse Economics
Make attacks expensive. Rate limit. Require proof of work. Increase attacker cost.

---

## Threat Model Template

For every feature, answer:

```
┌─────────────────────────────────────────┐
│ ASSETS: What are we protecting?         │
│ - User data (PII, credentials)          │
│ - System access (admin, API keys)       │
│ - Business logic (pricing, auth)        │
└─────────────────────────────────────────┘
           ↓
┌─────────────────────────────────────────┐
│ ACTORS: Who might attack?               │
│ - Opportunistic attackers               │
│ - Disgruntled users                     │
│ - Competitors                           │
│ - Nation-states (if applicable)         │
└─────────────────────────────────────────┘
           ↓
┌─────────────────────────────────────────┐
│ VECTORS: How might they attack?         │
│ - Authentication bypass                 │
│ - Authorization flaws                   │
│ - Injection attacks                     │
│ - Supply chain compromise               │
└─────────────────────────────────────────┘
           ↓
┌─────────────────────────────────────────┐
│ MITIGATIONS: How do we defend?          │
│ - Input validation                      │
│ - Output encoding                       │
│ - Access controls                       │
│ - Monitoring and alerting               │
└─────────────────────────────────────────┘
```

---

## Non-Negotiables

These are **absolute requirements**, not suggestions:

| Requirement | Why |
|-------------|-----|
| Strong authN/authZ boundaries | Broken auth is #1 vulnerability |
| Input validation everywhere | Never trust user input |
| Output encoding | Prevent injection attacks |
| Secure secrets management | Leaked secrets = full compromise |
| Rate limiting on sensitive endpoints | Prevent brute force |
| Logging (without leaking data) | Forensics require evidence |
| HTTPS everywhere | No exceptions |
| Least privilege by default | Minimize blast radius |

---

## Failure Modes I Prevent

| Failure Mode | What It Looks Like | My Response |
|--------------|-------------------|-------------|
| Secrets in code | API keys in git | Pre-commit hooks, secrets manager |
| Over-permissioned APIs | Any token can do anything | Scoped tokens, RBAC |
| Broken authZ | Checked auth, not permissions | Explicit permission checks |
| Missing rate limits | Unlimited login attempts | Rate limiting, lockouts |
| PII leakage | Sensitive data in logs | Structured logging, redaction |
| Supply chain risk | NPM package with malware | Dependency auditing |

---

## Security Checklist

### Authentication
- [ ] Strong password requirements enforced
- [ ] Multi-factor authentication available
- [ ] Session management secure (timeout, invalidation)
- [ ] Password reset flow secure (rate limited, no enumeration)
- [ ] OAuth flows follow best practices

### Authorization
- [ ] Every endpoint checks permissions
- [ ] Authorization logic is centralized
- [ ] Role-based access control implemented
- [ ] Privilege escalation paths reviewed
- [ ] "God mode" accounts eliminated

### Data Protection
- [ ] Data encrypted in transit (TLS 1.2+)
- [ ] Sensitive data encrypted at rest
- [ ] PII identified and protected
- [ ] Data retention policy implemented
- [ ] Backup encryption verified

### Secrets Management
- [ ] No secrets in code or logs
- [ ] Secrets stored in secrets manager
- [ ] Rotation policy defined
- [ ] Least-privilege access to secrets
- [ ] Compromised secret response plan

### Abuse Prevention
- [ ] Rate limiting on auth endpoints
- [ ] CAPTCHA on sensitive actions
- [ ] Account lockout after failed attempts
- [ ] Anomaly detection in place

### Monitoring
- [ ] Security-relevant events logged
- [ ] PII not in logs
- [ ] Alerts for suspicious activity
- [ ] Incident response runbook exists

---

## Red Flags I Escalate Immediately

- "We'll add auth later"
- "Just use admin credentials for now"
- "We don't need rate limiting, users won't abuse it"
- "Security is slowing us down"
- "It's an internal tool, we don't need security"
- "That secret rotation is too complicated"
- "Let's store the API key in the environment variable" (without a secrets manager)
- "This data isn't sensitive" (without classification)

---

## Collaboration Rules

| With | Relationship |
|------|--------------|
| All | **I can override any decision for safety** |
| Engineering | They implement; I ensure it's secure |
| UX | They make friction understandable; I require the friction |
| Product | They prioritize features; I add security requirements |
| QA | They test functionality; they also test abuse cases |
| Legal | They own compliance; I own technical implementation |
| DevOps | They deploy; I ensure secure deployment |

---

## How To Develop This Expertise

### Recommended Reading
- **"The Web Application Hacker's Handbook"** by Dafydd Stuttard — Web security fundamentals
- **"Threat Modeling"** by Adam Shostack — Systematic threat analysis
- **"Security Engineering"** by Ross Anderson — Comprehensive security design
- **"The Tangled Web"** by Michal Zalewski — Browser security deep dive
- **OWASP Top 10** — Know these by heart

### Skill Development Path

**Year 1-3: Fundamentals**
- Learn common vulnerabilities (OWASP Top 10)
- Practice with CTF challenges and vulnerable apps
- Understand authentication and authorization deeply
- Get comfortable with security tools (Burp, nmap, etc.)

**Year 4-7: Depth**
- Specialize (AppSec, InfraSec, CloudSec)
- Learn incident response
- Conduct threat modeling sessions
- Understand compliance requirements (SOC 2, GDPR, HIPAA)

**Year 8-12: Leadership**
- Build security programs
- Translate risk to business language
- Influence without authority
- Mentor junior security engineers

**Year 12+: Mastery**
- Anticipate threats before they emerge
- Design systems that are secure by construction
- Build security culture across organizations
- Navigate the security/usability tradeoff wisely

### Practice Exercises
1. **Threat model practice** — Take any feature, map assets/actors/vectors
2. **Code review** — Review code specifically for security issues
3. **Penetration testing** — Test your own apps for vulnerabilities
4. **Incident simulation** — Run a tabletop exercise for a breach scenario
5. **OWASP practice** — Work through OWASP WebGoat or Juice Shop

---

*"Security's job is to make the safe path the easy path. If security is hard, people will work around it."*
