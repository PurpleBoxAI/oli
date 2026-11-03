---
title: Operating model
parent: The method
nav_order: 2
permalink: /method/operating-model/
---

# 2. Operating model: five workflows

The business runs five recurring workflows. Each one reads from a named record, produces drafts or recommendations, and ends with an owner decision. The cadence below is a design default; adjust it to your volume.

## Workflow A: Lead follow-up (daily, business days)

Input: the Lead Log (see `04-data-model.md`).

1. List every lead with Status = New that is past the callback promise, oldest first.
2. For each one, draft a short confirmation email: we received your inquiry, here is the service and start date we noted, here are two callback windows. Three to five sentences.
3. Create a calendar reminder for the owner to call each one today.
4. List leads with Status = No answer that are older than a set number of days (default: 3) as "second try".
5. Output one table: name, service type, hours waiting, action taken.

Owner decision: review each draft, send or edit, make the calls, update the Status column.

## Workflow B: Ads review (weekly)

Input: ad account numbers (read-only) and the Lead Log.

1. Compare the last 7 days with the 7 days before, per campaign: spend, clicks, calls, conversions, cost per lead.
2. List search terms that cost money but do not match a real customer (job seekers are the common case). These are negative keyword candidates.
3. Flag any targeting outside the service ZIP codes.
4. Cross-check ad conversions against Lead Log rows with Source = ads.
5. Output at most 3 recommended changes, each with the reason and the exact place to make it.

Owner decision: make the changes, or not, in the ad account. Next week's review checks whether cost per lead moved.

If the ad account cannot be read directly, the owner exports the standard weekly report and the assistant reads the file. The workflow is the same.

## Workflow C: Reviews and profile (weekly)

Input: new Google reviews (pasted by the owner, or read through a connection if one exists) and the service list.

1. Draft a reply to each new review: thank the reviewer by first name, mention one specific detail from the review, share nothing private, two to three sentences.
2. For a negative review, draft a calm reply that offers a phone call, and flag it at the top.
3. Draft one Business Profile post for the week, 60 to 120 words, on one service, ending with a call to action to call the office.

Owner decision: paste the replies and the post, or edit first. For a franchise, brand approval applies to posts.

## Workflow D: Monthly owner report (monthly)

Input: the Lead Log and the ad account numbers for the last calendar month.

1. Leads by source, and how many reached Consult booked and Client.
2. Ad spend and cost per lead by channel. Cost per client if any.
3. Median hours from lead received to first callback.
4. Three things that worked, three things to fix next month.
5. The most common customer questions from the Notes column.

Output: one page. Every number names its record. Gaps are marked.

Owner decision: pick the fixes for next month.

## Workflow E: Intake script tuning (monthly)

Input: last month's Lead Log notes and call summaries.

1. List questions customers asked that the intake script did not answer.
2. List the intake fields that came back empty most often.
3. Suggest at most 3 script edits, written as the exact new lines.

Owner decision: approve the edits and update the call-answering setup. For a franchise, brand approval applies.

## Cadence summary (design defaults)

- Daily, business days: Workflow A.
- Weekly: Workflow B (start of week), Workflow C (mid-week).
- Monthly, first business day: Workflows D and E.

Estimated owner time per run, to validate in a pilot: A about 10 minutes, B about 20 minutes, C about 10 minutes, D and E together about 30 minutes.
