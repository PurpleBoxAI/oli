# Local Growth Pack

Status: draft, not yet released. Repository: https://github.com/PurpleBoxAI/oli Nothing here has been tested with a real business yet.

A free, open methodology for a small local service business (a franchise location, an independent office) to run Google visibility, lead follow-up and monthly reporting with the AI subscription it already pays for. Everything runs in your own accounts: your email, your Google account, your sheet, your Claude or ChatGPT subscription. Nothing is hosted by PurpleBox and no customer data leaves your systems.

## How the package is organized

- `10-methodology/`: the method itself, with no technology named. Read this first. It describes the five recurring workflows, the data you keep, the guardrails, the metrics and a phase plan from "get ready" to "monitor and improve".
- `20-implementation/`: how to run the method on a specific AI stack. `claude/` holds a Claude plugin and setup guide. `chatgpt/` holds ChatGPT Project instructions and scheduled task prompts. `shared/` holds the templates every stack uses (rules file, intake call script, Lead Log).

## Ways to use it

- Do it yourself: read `10-methodology/`, pick a stack under `20-implementation/`, follow its setup guide.
- Have it done for you: PurpleBox can set it up in your accounts and hand over, or set it up and keep running the monitoring and improvement phase. Contact details will be added before release.

## Guardrails that every part of the package follows

- Drafts only. The assistant never sends an email or message; you do.
- Ads are read-only. The assistant recommends; you make the change.
- Minimum personal data. No names of children, no health details, nothing the workflow does not need.
- No invented numbers. Missing data is reported as missing, with the source named.

## License

Documents and templates: CC BY 4.0 (see `LICENSE-DOCS.md`). Plugin code: Apache 2.0 (see `LICENSE-CODE.md`). Both pending final legal review; see each file for status.

Made by PurpleBox, Atlanta, Georgia. Repository: https://github.com/PurpleBoxAI/oli
