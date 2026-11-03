---
title: Data model
parent: The method
nav_order: 4
permalink: /method/data-model/
---

# 4. Data model: the Lead Log

One spreadsheet, one row per inquiry. Every workflow reads it and the owner (or the call answering service) writes it. It is the single record of truth for leads and the source of every metric.

## Columns

- Received: date and time the inquiry arrived. Written by the call answering service or the owner.
- Source: where the inquiry came from. Values: Google Ads, Local Services Ads, Maps, Website form, Referral, Unknown. Written from the caller's answer.
- Customer name.
- Phone, Email.
- ZIP: the ZIP code where the service would happen.
- Service type: one of the business's service options, exactly as named on the website.
- Details: the one business-specific field, minimum data only. For child care: number of children and age ranges, no names, no health details.
- Start date, Schedule: when the customer wants to start and which days and times.
- Status: see below.
- First callback: date and time of the first callback attempt by the business. Written by the owner or staff. Required for the time-to-callback metric.
- Next action, Due: the next step and its date. Proposed by the assistant, confirmed by the owner.
- Notes: free text, including the customer's questions. Feeds the monthly report and the script tuning.

## Status values

New, Called back, Consult booked, Client, Not a fit, No answer, Applicant.

- New: no callback attempt yet.
- Called back: at least one callback made and the customer reached.
- No answer: callback attempted, customer not reached. Comes back as "second try" after the set number of days.
- Consult booked, Client: the two conversion steps the monthly report counts.
- Not a fit: outside the service area or not a service the business offers.
- Applicant: a job seeker. Excluded from lead metrics.

## Rules for the Lead Log

1. One row per inquiry. A second call from the same person updates the row.
2. Received and First callback are timestamps, not dates, so hours can be computed.
3. Status is the owner's record. The assistant proposes, the owner sets.
4. Nothing goes into the sheet that the workflows do not need. No health details, no children's names, no payment information.
5. The sheet lives in the owner's own account.

The template is `20-implementation/shared/lead-log-template.csv`.
