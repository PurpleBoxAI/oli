---
title: Scheduled task prompts
parent: ChatGPT edition
grand_parent: Implementation
nav_order: 2
permalink: /implementation/chatgpt/scheduled-tasks/
---

# ChatGPT scheduled task prompts

Each prompt is self-contained and repeats the key rules, because scheduled tasks do not support GPTs and cannot read a Project's files (see `README.md` in this folder, section 2, for the source). Four tasks fit within the Plus limit of five active tasks. Fill the [brackets]. Times are design defaults in the owner's local time.

| Task | Schedule |
|---|---|
| Morning lead digest | Weekdays, 8:00 |
| Weekly ads review | Mondays, 8:30 |
| Reviews and profile reminder | Thursdays, 9:00 |
| Monthly report | 1st of the month, 9:00 |

## Morning lead digest
Open the Google Sheet "[sheet name]" in Google Drive. List every row with Status = New that is past the callback promise ([callback promise]), oldest first, as a table: name, phone, service type, start date, hours waiting. Add rows with Status = No answer older than 3 days as "second try". For each, create a Google Calendar reminder today titled "Call [customer name]". Do not email anyone and do not change the sheet. If the sheet is empty or unreachable, say so.

## Weekly ads review
Using Google Ads data, read-only (the connected app, or the exported campaign and search-terms reports attached to this task), compare the last 7 days with the 7 days before for each campaign: spend, clicks, calls, conversions, cost per lead. List search terms that cost money but are not real customers (for example job seekers). Check targeting stays inside ZIPs [service ZIPs]. Compare ad conversions to Lead Log rows with Source = Google Ads. End with max 3 recommended changes, each with the reason and the click path in Google Ads. Change nothing. Use only numbers the ad data returns; mark missing data and name the source.

## Reviews and profile reminder
Remind me to paste this week's new Google reviews into the Marketing desk project and type "draft review replies". Then draft one 60 to 120 word Google Business Profile post about one of these services: [service options]. End with a call to action to call [phone]. No em dashes.

## Monthly report
For last calendar month, from the Lead Log sheet "[sheet name]" and the Google Ads data (read-only, connected or exported): leads by source; how many reached Consult booked and Client; ad spend and cost per lead by channel; median hours from Received to First callback (say "no data" if First callback is empty). Then 3 things that worked and 3 to fix. One page. Only numbers from the sheet and the ad data; name the source of each. Mark gaps. Also list the 3 most common customer questions in the Notes column.
