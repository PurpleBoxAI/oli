---
title: Intake process
parent: The method
nav_order: 8
permalink: /method/intake-process/
---

# 8. Intake process

How an inquiry call is handled when the office does not pick up. The script that implements this is `20-implementation/shared/intake-call-script-template.md`.

## Steps

1. Greet, name the business, disclose that the call may be recorded, and ask one question: are you calling about a service for yourself or your family, or about working with us?
2. Job seeker: thank them, give the careers link, note name and number, log Status = Applicant, end the call.
3. Customer: ask one question at a time and confirm each answer. Collect the minimum fields in this order: name; best phone and email; ZIP code; service type (offer the business's options); the one business-specific field (minimum data); start date and schedule; how they heard about the business; anything else for the owner.
4. Price or availability question: do not answer. Say the owner will go over options when they call back.
5. Urgent request: try a live transfer to the owner. If no answer, say the request is flagged as urgent and mark Notes = URGENT.
6. Outside the service area: thank them, say another office may serve that area, note the details so the owner can point them to the right team.
7. Close: repeat the callback promise, say a short confirmation email will follow.
8. Write the row to the Lead Log with Received set to now and Status = New.

## Rules

- One question at a time. Confirm each answer.
- Never quote prices, availability or staff names.
- Collect nothing the workflows do not need.
- The owner approves the final wording. For a franchise, the franchisor approves brand language.

## Before go-live

- Owner confirms the service list, the callback promise and the careers link.
- Brand approval, if a franchise.
- Test calls, one per branch of the script: customer, job seeker, price question, urgent, outside area.
- Confirm each test call produced a correct Lead Log row.

## Monthly tuning

Workflow E reads last month's Notes and proposes at most three exact script edits. The owner approves and applies them.
