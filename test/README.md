# Test data

Fictional business and leads for running the verification checklists. Nothing here is a real customer.

- `rules-test.md`: a filled rules file for "Example Home Services". Add it to a test Project as "Local Growth Pack rules".
- `lead-log-test.csv`: three leads. Import into a Google Sheet named "Lead Log TEST". Row 1 is a New lead past the callback promise; row 2 is a No answer older than 3 days; row 3 has a First callback timestamp so the time-to-callback metric has one data point.

Expected results when running the Claude or ChatGPT checklist against this data:
- "run lead follow-up": one table row for Test Customer One (draft and reminder), Test Customer Two under "Second try", nothing for Test Customer Three.
- "build monthly report" for October 2026: one lead by source Referral, one Consult booked, median hours to first callback 1.5 (one data point), ad spend "no data" unless ad data is attached.

Delete the test Project, sheet and drafts when done.
