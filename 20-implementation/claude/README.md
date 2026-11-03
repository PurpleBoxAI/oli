# Claude edition: setup guide

Status: draft, not yet tested end to end with a real business. Verify every step marked "verify" in your own account before relying on it.

## 1. Mapping: workflow to mechanism

- Workflow A, lead follow-up: skill `lead-followup`, run by a scheduled task on business days or by typing "run lead follow-up".
- Workflow B, ads review: skill `ads-weekly-review`, weekly scheduled task or "run ads review".
- Workflow C, reviews and profile: skill `reviews-and-profile`, weekly scheduled task or "draft review replies".
- Workflow D, monthly report: skill `monthly-owner-report`, monthly scheduled task or "build monthly report".
- Workflow E, script tuning: skill `intake-script-tuner`, monthly scheduled task or "tune the script".
- Rules file: a file named "Local Growth Pack rules" in the owner's Claude Project, made from `shared/rules-template.md`.
- Lead Log: a Google Sheet in the owner's Google Drive, made from `shared/lead-log-template.csv`.
- Call answering: any AI receptionist or answering service that can write a row to the sheet. Outside Claude.

## 2. Prerequisites and plan gating

- A paid Claude plan with the desktop app (Cowork), connectors and scheduled tasks. Plugins and scheduled tasks are Cowork features; see the Claude Help Center, "Getting started with Cowork" (https://support.claude.com/articles/13345190) and "Schedule recurring tasks in Claude Cowork" (https://support.claude.com/en/articles/13854387-schedule-recurring-tasks-in-claude-cowork). Both were consulted in October 2026; re-check for current plan requirements. Verify: which plan tier the owner needs for the task volume (one daily plus two weekly plus two monthly runs).
- Google connectors in Claude: Gmail, Google Calendar, Google Drive. Verify in the owner's account that all three are offered on their plan and that Drive can read a Google Sheet.
- Google Ads: no built-in Claude connector is assumed by this guide. Default path is the export fallback (section 5). Verify at setup whether a Google Ads connection exists on the owner's plan.
- A Google account that owns, or has read access to, the Business Profile and the Google Ads account. For a franchise, confirm with the franchisor who holds these.

## 3. Setup steps (in the owner's accounts)

1. Create a Claude Project named for the business, for example "Marketing desk".
2. Fill `shared/rules-template.md` with the business facts. Add it to the Project as a file named "Local Growth Pack rules".
3. Create the Lead Log: import `shared/lead-log-template.csv` into a new Google Sheet in the owner's Drive. Name it as written in the rules file.
4. Connect Gmail, Google Calendar and Google Drive in the owner's Claude account.
5. Install the plugin from `claude/local-growth-pack/`. Verify: the install path for a Cowork plugin from a downloaded `.plugin` file versus a repository link; follow the Help Center article current at the time.
6. Run each skill once by typing its trigger phrase. Fix anything the verification checklist catches.
7. Create the scheduled tasks (section 6).
8. Set up call answering with `shared/intake-call-script-template.md`, connect it to the Lead Log, place the test calls from `10-methodology/08-intake-process.md`.

## 4. Verification checklist

Run with one test row in the Lead Log (Status = New, Received two days ago) and one test review pasted in.

- "run lead follow-up" produces a table with the test row, a Gmail draft (not sent) and a calendar reminder titled "Call [customer name]".
- The skill proposed a Status value and did not change the sheet.
- "run ads review" with no ad connection asks for the exported reports, and with the exported files produces at most 3 changes with click paths, each with a number from the file.
- "draft review replies" produces one reply per pasted review and one post of 60 to 120 words.
- "build monthly report" produces one page, names a source for every number, and reports "no data" for time to first callback when the First callback column is empty.
- "tune the script" produces at most 3 exact script lines from the Notes column.
- No output contains an em dash, a price, an availability promise or a staff name.
- Remove the test row and test review afterwards.

## 5. Known limits and workarounds

- Google Ads data: without a connection, the owner exports two reports from Google Ads each week (campaign performance, search terms) and attaches them when running the skill. The method is the same.
- Google Business Profile: no connection assumed. The owner pastes new reviews.
- Google Analytics: optional. If connected, the ads review adds one step; otherwise it is skipped.
- Scheduled task behavior can change with app updates. After any update, run each skill by hand once.
- Usage limits: five short runs a week is the design. Measure usage in the first month and size the plan.
- The plugin does not write to the Lead Log. The owner keeps Status and First callback current; the metrics depend on it.

## 6. Operations

Scheduled tasks (design defaults, adjust to the business):
- Morning lead digest: business days, 8:00 local, skill `lead-followup`.
- Weekly ads review: Monday 8:30, skill `ads-weekly-review`.
- Reviews and profile: Thursday 9:00, skill `reviews-and-profile`.
- Monthly report and script tuning: first business day of the month, 9:00, skills `monthly-owner-report` then `intake-script-tuner`.

Owner's routine: read the morning digest, send or edit the drafts, make the calls, set Status and First callback. Monday, apply or decline the ad changes. Thursday, paste the replies and the post. First of the month, read the report and pick three fixes.

## 7. Hand-over and management notes

Hand-over (end of an implementation package): the owner holds every account and connection; the partner holds nothing. Hand over the filled rules file, the verification checklist results, the scheduled task list and the change log. Walk the owner through one full week by hand.

Management (ongoing package): monthly, run the report with the owner, log every change, check the rules file and the ZIP list. Quarterly, re-run the verification checklist and check that connectors and scheduled tasks survived app updates. Drift signs: First callback column going empty, ads review returning "no data" for two weeks, drafts getting longer than five sentences, the owner skipping the Monday changes.

## Sources

- Claude Help Center, Getting started with Cowork: https://support.claude.com/articles/13345190 (consulted October 2026).
- Claude Help Center, Schedule recurring tasks in Claude Cowork: https://support.claude.com/en/articles/13854387-schedule-recurring-tasks-in-claude-cowork (consulted October 2026).
