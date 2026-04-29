# Mode: deep — Deep Research Prompt

Generates a structured prompt for Perplexity/Claude/ChatGPT with 6 axes:

```
## Deep Research: [Company] — [Role]

Context: I'm evaluating an application for [role] at [company]. I need actionable information for the interview.

### 1. Engineering Culture
- How do they ship? (deploy cadence, CI/CD, release process)
- Mono-repo or multi-repo?
- What languages/frameworks do they use? (.NET version, cloud provider, etc.)
- Remote-first or office-first?
- Glassdoor/Blind reviews about eng culture?

### 2. Tech Stack and Architecture
- What does the backend stack look like? (.NET, databases, messaging, caching)
- Microservices or monolith? Any known migration in progress?
- How do they handle scalability and reliability?
- Engineering blog? What do they publish?

### 3. Recent Moves (last 6 months)
- Relevant hires in backend/platform/engineering leadership?
- Acquisitions or partnerships?
- Product launches or pivots?
- Funding rounds or leadership changes?

### 4. Likely Challenges
- What scaling problems do they have?
- Reliability, cost, latency challenges?
- Are they migrating anything? (infra, monolith, cloud provider)
- What pain points do people mention in reviews?

### 5. Competitors and Differentiation
- Who are their main competitors?
- What is their moat/differentiator?
- How do they position themselves vs the competition?

### 6. Candidate Angle
Given my profile (read from cv.md and profile.yml for specific experience):
- What unique value do I bring to this team?
- Which of my projects are most relevant?
- What story should I tell in the interview?
```

Personalize each section with the specific context of the evaluated offer.
