
# Science as Amateur Software Development (talk)

Why most research code breaks — and what to do about it.

## 1. Watch the Talk

**"Science as Amateur Software Development (2023 edition)"**
Richard McElreath — Max Planck Institute for Evolutionary Anthropology
10K views · 2 years ago · 42:15 runtime

A talk given to a summer-school audience on open science / research methods.

![Video thumbnail](../../images/extra-resources/software-engineering/video-amateur-software-dev.jpg)

## 2. How This Summary Was Made

- YouTube reports "Subtitles/closed captions unavailable" for this video — confirmed via the player UI and via
  yt-dlp's caption API (no track in any language)
- So the audio track was downloaded and run through a local, offline speech-to-text model to produce a working
  transcript
- The following sections paraphrase the actual talk from that transcript — not the video description, not
  guesswork

## 3. The Core Analogy: Science Needs "Continuous Integration"

- McElreath's argument: software engineering professionalized how teams integrate work — version control,
  testing, code review — over the last ~20 years
- Science, he argues, still handles this almost entirely informally — picked up ad hoc from labmates or
  tutorials, never systematically taught
- The claim isn't "become a software engineer" — it's borrow the specific tools (version control, testing)
  that solve this coordination problem

## 4. Case Study: Stan's Test-to-Code Ratio

- Stan (the Bayesian modeling library McElreath uses and has contributed to): 3.6 MB of library code
- ...vs. 7.6 MB of code that exists purely to test it
- He notes 2–3x more test code than production code is typical for mature open-source software projects — and
  almost unheard of in scientific analysis code

## 5. Two Kinds of Failure: Greed vs. Sloth

- **Greed** — conscious incentive-driven shortcuts: selective reporting, p-hacking, publication pressure
- **Sloth** — unintentional failures from missing standards: can't reproduce your own old results, lost code,
  undocumented data
- McElreath's focus is deliberately on sloth — it's the category training and tooling can actually fix

## 6. Real Failure: the Reinhart-Rogoff Excel Error

- Reinhart & Rogoff's 2010 paper "Growth in a Time of Debt" argued high public debt hurts GDP growth
- It was cited on the floor of the US Congress during debates over post-2008 stimulus spending
- Grad student Thomas Herndon found the result depended on an Excel formula that excluded several countries —
  a spreadsheet range error, not fraud

## 7. Real Failure: Excel Autocorrecting Gene Names

- Excel silently reformats spreadsheet cells it interprets as dates
- Gene symbols like `SEPT1` get auto-converted to "September 1" — a well-documented, recurring bug in
  published genomics data
- The fix ended up being social, not technical: the gene-naming authority renamed the affected genes rather
  than get Excel changed

## 8. The Reproducibility Numbers

- An audit of the human/animal social-learning literature (led by a student in McElreath's department) found
  only ~24% of studies could even be reproduced — before asking whether the result was right
- A 2020 ecology-literature audit of 346 papers found only ~20% had potentially reproducible code and data
- McElreath's point: this is a curation and professionalization failure, not (mainly) a fraud problem

## 9. The Fix: Borrow, Don't Reinvent

- Version control, testing, and documentation, borrowed directly from software engineering practice
- Software Carpentry / Data Carpentry — free, existing training material aimed at exactly this gap, with
  versions tuned for ecologists, psychologists, etc.
- McElreath's own institute runs an annual week-long training on these skills for this reason

## 10. The Second Problem: Hypothesis-to-Estimator Logic

- Beyond code hygiene, McElreath argues most analyses never rigorously connect the actual scientific
  hypothesis to the statistical estimator used to test it
- He points to Judea Pearl's work on causal inference as the existing, underused toolkit for making that
  connection explicit
- Without it, a data-analysis pipeline can look reasonable yet be logically incapable of answering the
  question it's asked

## 11. Case Study: the "Hot Hand" Reversal

- Gilovich, Vallone & Tversky (1985) concluded the basketball "hot hand" was a cognitive illusion — no real
  streakiness
- McElreath: their streak-counting estimator had a built-in statistical bias that skews toward finding no
  effect
- Miller & Sanjurjo's later correction reversed the conclusion — properly estimated, the hot hand effect is
  real

## 12. A Four-Step Fix for Data Analysis

1. Express the theory as an explicit generative/probabilistic model
2. Prove analytically it could work in principle
3. Test it on synthetic data before touching anything real
4. Only then apply it to real data — looping back to step 1 as needed (see Gelman et al.'s "Bayesian workflow"
   for the fuller version)

## 13. Practices That Close the Gap

- Version control (git) instead of `final_v3_reallyfinal.py` — see
  [Git & GitHub Desktop](git-github-desktop.md)
- An isolated environment per project — see [Virtual Environments](virtual-environments.md)
- A standard project layout (CCDS) instead of an ad hoc folder — see
  [Cookiecutter Data Science](cookiecutter-data-science.md)
- Secrets kept out of code (`.env`) — see [Keeping Secrets Out of Git](keeping-secrets-out-of-git.md)
