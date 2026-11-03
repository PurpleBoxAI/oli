---
title: Metrics
parent: The method
nav_order: 6
permalink: /method/metrics/
---

# 6. Metrics

Every number in a report comes from a named record. If the record cannot produce it, the report says "no data" and names the record.

## Core metrics

- Inquiries received: count of Lead Log rows (excluding Applicant) in the period. Source: Lead Log, Received.
- Leads by source: inquiries grouped by Source. Source: Lead Log.
- Missed calls: calls the office did not answer and the answering service took. Source: the call answering service's log, if it reports it; otherwise "no data".
- Time to first callback: hours between Received and First callback. Report the median. Source: Lead Log. Requires both timestamps.
- Callback promise kept: share of leads whose first callback was within the promise. Source: Lead Log and the promise in the rules file.
- Consults booked, Clients: rows that reached those statuses. Source: Lead Log, Status.
- Ad spend, clicks, conversions, cost per lead: per campaign and per channel. Source: the ad account (read-only) or the owner's exported report.
- Cost per client: ad spend divided by Clients with Source = that channel. Source: both records. Often "no data" in early months; say so.
- Review count and replies: new reviews in the period and how many got a reply. Source: the Business Profile, or the owner's count.
- Owner time: minutes per run of each workflow. Source: the owner's own note. The method's design target is under two hours a week; it stays a target until measured.

## Baseline

Before the method starts, record the same metrics for a set period (design default: two weeks) with no changes. The monthly report compares against this baseline, not against a guess.

Baseline fields: calls received, calls missed, inquiries, time to callback (if known), ad spend, cost per lead, owner hours on admin.

## Targets

No targets are set in this package. Targets come from the owner's baseline and the first two monthly reports.

## What a monthly report looks like

One page. Sections in this order: leads by source and conversion; ad spend and cost per lead; time to first callback; three things that worked; three things to fix; most common customer questions; gaps and their sources.
