---
title: ChatGPT edition
parent: Implementation
nav_order: 2
has_children: true
permalink: /implementation/chatgpt/
---

# ChatGPT edition: setup guide

Status: draft, not yet tested end to end with a real business. ChatGPT plan features change often; every claim here carries an official source and a verification date. Re-check before relying on any of them.

## 1. Mapping: workflow to mechanism

- Workflow A, lead follow-up: the "run lead follow-up" command in the Project instructions, or the Morning lead digest scheduled task.
- Workflow B, ads review: "run ads review", or the Weekly ads review task.
- Workflow C, reviews and profile: "draft review replies", or the Reviews and profile reminder task.
- Workflow D, monthly report: "build monthly report", or the Monthly report task.
- Workflow E, script tuning: "tune the script" (run by hand on the first of the month).
- Rules file: pasted into the Project instructions (`project-instructions-template.md`). On plans with Skills, the five skill folders from the Claude edition can be uploaded as well; they follow the same SKILL.md standard.
- Lead Log: a Google Sheet in the owner's Google Drive, from `shared/lead-log-template.csv`.
- Call answering: any AI receptionist or answering service that writes a row to the sheet. Outside ChatGPT.

## 2. Prerequisites and plan gating

Verified on OpenAI Help Center pages on 2026-11-03 (page "updated" stamps noted). Re-check before setup; these change often.

- Projects with instructions and files: available to signed-in users subject to plan; Plus allows 25 files per project. Source: Projects in ChatGPT, https://help.openai.com/en/articles/10169521-projects-in-chatgpt (updated about 2026-10-31).
- Connected apps (Gmail, Google Calendar, Google Drive): availability "depends on the app, your ChatGPT plan, region, workspace". Source: Connected apps in ChatGPT, https://help.openai.com/en/articles/11487775-connected-apps-in-chatgpt (updated about 2026-10-28). The Gmail connection can send email on Plus, Pro, Business and Enterprise (web), per the ChatGPT release notes entry of 2026-06-08, https://help.openai.com/en/articles/6825453-chatgpt-release-notes. This edition keeps the drafts-only rule regardless; see section 5.
- Scheduled tasks: available on Free, Go, Plus, Pro, Business, Enterprise and Edu. Active task limits: 3 (Free, Go), 5 (Plus), 10 (Business, Edu), 15 (Pro, Enterprise). Tasks can use supported connected apps, including Gmail. Tasks do not support GPTs, and a task created inside a Project cannot access that Project's files. Source: Scheduled tasks in ChatGPT, https://help.openai.com/en/articles/10291617-scheduled-tasks-in-chatgpt (updated about 2026-10-31). This edition uses four tasks, within the Plus limit of five.
- Skills: available to eligible Business, Enterprise, Healthcare and Edu users; generally available since 2026-07-09. Not listed for Plus or Pro. Source: Skills in ChatGPT, https://help.openai.com/en/articles/20001066-skills-in-chatgpt (updated about 2026-10-20); SKILL.md format described at https://openai.com/academy/skills/. On Plus, the Project instructions carry the procedures; nothing is lost.
- Custom MCP servers: full support for Business and Enterprise/Edu on web; Pro can connect read-only servers; not available on Plus. No Developer Mode toggle is needed any more. Source: Connecting custom MCP servers in ChatGPT, https://help.openai.com/en/articles/12584461-connecting-custom-mcp-servers-in-chatgpt (updated about 2026-10-27). This edition does not need a custom MCP server.
- Google Ads: no OpenAI-built connector found on the Help Center. Third-party Google Ads plugins exist in OpenAI's plugin directory (for example https://openai.com/business/plugins/windsor-ai-google-ads/), some of which can change campaigns after confirmation. This edition does not assume any of them; the default path is the export fallback (section 5). If an owner adopts one, the read-only rule still applies.
- Custom GPTs are being retired in favor of plugins (release notes, 2026-09-11). This edition never depended on a custom GPT.

## 3. Setup steps (in the owner's accounts)

1. Create a ChatGPT Project named for the business, for example "Marketing desk".
2. Fill `project-instructions-template.md` and paste it into the Project instructions.
3. Create the Lead Log: import `shared/lead-log-template.csv` into a new Google Sheet in the owner's Drive. Name it as written in the instructions.
4. Connect Gmail, Google Calendar and Google Drive in the owner's ChatGPT settings (an admin may need to enable them on a workspace plan).
5. If the plan offers Skills, upload the five skill folders. Otherwise skip; the commands cover it.
6. Type each command once and fix anything the verification checklist catches.
7. Create the four scheduled tasks from `scheduled-task-prompts.md`.
8. Set up call answering with `shared/intake-call-script-template.md`, connect it to the Lead Log, place the test calls from `10-methodology/08-intake-process.md`.

## 4. Verification checklist

Same tests as the Claude edition, run with one test row and one pasted review:

- "run lead follow-up": table, Gmail draft (not sent), calendar reminder, proposed Status, sheet unchanged.
- "run ads review" with exported files: at most 3 changes, each with a number from the file and a click path.
- "draft review replies": one reply per review, one 60 to 120 word post.
- "build monthly report": one page, a source for every number, "no data" where First callback is empty.
- "tune the script": at most 3 exact lines.
- Each scheduled task fires once at its time and produces the same output as the command.
- No em dash, price, availability promise or staff name in any output.
- Remove the test row and test review afterwards.

## 5. Known limits and workarounds

- Gmail in ChatGPT can send email on paid plans (OpenAI release notes, 2026-06-08). The rules say drafts only; the owner sends from Gmail. Keep that rule even when the app offers to send, and decline any send approval prompt.
- Google Ads: owner exports the campaign and search-terms reports weekly and attaches them.
- Google Business Profile: owner pastes reviews.
- Skills not on Plus or Pro: the Project instructions hold the procedures.
- Scheduled tasks do not support GPTs and cannot read a Project's files: prompts are self-contained and repeat the rules.
- Two editions to maintain: the Claude skills are the source; the Project instructions are kept in step with them by hand. Check both when either changes.

## 6. Operations

Scheduled tasks (design defaults, owner's local time): Morning lead digest, business days 8:00. Weekly ads review, Monday 8:30. Reviews and profile reminder, Thursday 9:00. Monthly report, first of the month 9:00. Script tuning by hand on the first of the month.

Owner's routine is the same as the Claude edition: read the digest, send the drafts, make the calls, set Status and First callback; Monday apply ad changes; Thursday paste replies and post; monthly read the report and pick three fixes.

## 7. Hand-over and management notes

Same as the Claude edition (`claude/README.md`, section 7), with one addition: after any ChatGPT plan or feature change, re-check section 2 and re-run the verification checklist, because plan gating has moved several times in 2026.

## Sources (verified 2026-11-03)

- OpenAI Help Center, Projects in ChatGPT: https://help.openai.com/en/articles/10169521-projects-in-chatgpt
- OpenAI Help Center, Connected apps in ChatGPT: https://help.openai.com/en/articles/11487775-connected-apps-in-chatgpt
- OpenAI Help Center, Scheduled tasks in ChatGPT: https://help.openai.com/en/articles/10291617-scheduled-tasks-in-chatgpt
- OpenAI Help Center, Skills in ChatGPT: https://help.openai.com/en/articles/20001066-skills-in-chatgpt
- OpenAI Academy, Using skills: https://openai.com/academy/skills/
- OpenAI Help Center, Connecting custom MCP servers in ChatGPT: https://help.openai.com/en/articles/12584461-connecting-custom-mcp-servers-in-chatgpt
- OpenAI Help Center, ChatGPT release notes: https://help.openai.com/en/articles/6825453-chatgpt-release-notes
