# Local Growth Pack plugin for Claude

Five skills that run the Local Growth Pack method (see `10-methodology/` in the repository) inside Claude. Drafts only: the owner sends every email and makes every ad change.

## Skills

- `lead-followup`: daily. Reads the Lead Log, drafts follow-up emails in Gmail, creates calendar reminders. Trigger: "run lead follow-up".
- `ads-weekly-review`: weekly. Reads connected or exported Google Ads data, recommends at most 3 changes. Trigger: "run ads review".
- `reviews-and-profile`: weekly. Drafts review replies and one Business Profile post. Trigger: "draft review replies".
- `monthly-owner-report`: monthly. One-page report from the Lead Log and ad data. Trigger: "build monthly report".
- `intake-script-tuner`: monthly. Suggests at most 3 exact script edits. Trigger: "tune the script".

## Setup

1. Create a Claude Project for the business (for example "Marketing desk").
2. Copy `20-implementation/shared/rules-template.md`, fill the brackets, and add it to the Project as a file named "Local Growth Pack rules". Every skill reads that file first.
3. Connect, in the owner's own Claude account: Gmail (drafts), Google Calendar (reminders), Google Drive (to read the Lead Log sheet). See `CONNECTORS.md`.
4. Install this plugin. The setup guide in `20-implementation/claude/README.md` has the steps and the verification checklist.
5. Create the scheduled tasks listed in the setup guide, or run each skill by typing its trigger phrase.

## What the plugin never does

Send email or messages, change a Google Ads campaign, change the Lead Log, change the intake script, quote prices or availability, invent numbers.

## License

Apache 2.0, see `LICENSE-CODE.md` at the repository root (pending final legal review).
