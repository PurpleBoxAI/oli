# ChatGPT edition: setup guide

Status: draft, not yet tested end to end with a real business. ChatGPT plan features change often; every claim here carries a source and a date. Re-check the OpenAI Help Center before relying on any of them.

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

As researched in October 2026, mostly from third-party articles; verify on the OpenAI Help Center before setup.

- A paid ChatGPT plan with Projects, connected apps (Gmail, Google Calendar, Google Drive) and scheduled tasks. Connected apps on paid plans: Carly, "ChatGPT connectors" (https://www.usecarly.com/blog/chatgpt-connectors/), consulted October 2026.
- Skills: reported as launched for Business, Enterprise, Healthcare and Edu plans in July 2026 (The AI Career Lab, https://theaicareerlab.com/blog/chatgpt-skills-what-they-are-how-to-enable-2026, consulted October 2026). OpenAI Help Center article on Skills: https://help.openai.com/en/articles/20001066. Verify current availability on the owner's plan. If Skills are not available, the Project instructions carry the procedures; nothing is lost.
- Scheduled tasks: reported as able to use connected apps after a mid-2026 rebuild, and custom GPTs reported as not able to run inside tasks (PortEden, https://porteden.com/blog/chatgpt-scheduled-tasks-tools/, consulted October 2026). This is why each task prompt is self-contained. Verify task limits per plan.
- Google Ads: no connected app is assumed. Default path is the export fallback (section 5).

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

- Gmail in ChatGPT may be able to send after an approval (Carly, consulted October 2026). The rules say drafts only; the owner sends from Gmail. Keep that rule even if the app offers to send.
- Google Ads: owner exports the campaign and search-terms reports weekly and attaches them.
- Google Business Profile: owner pastes reviews.
- Skills not on the plan: the Project instructions hold the procedures.
- Scheduled tasks cannot load a custom GPT (as reported above): prompts are self-contained and repeat the rules.
- Two editions to maintain: the Claude skills are the source; the Project instructions are kept in step with them by hand. Check both when either changes.

## 6. Operations

Scheduled tasks (design defaults, owner's local time): Morning lead digest, business days 8:00. Weekly ads review, Monday 8:30. Reviews and profile reminder, Thursday 9:00. Monthly report, first of the month 9:00. Script tuning by hand on the first of the month.

Owner's routine is the same as the Claude edition: read the digest, send the drafts, make the calls, set Status and First callback; Monday apply ad changes; Thursday paste replies and post; monthly read the report and pick three fixes.

## 7. Hand-over and management notes

Same as the Claude edition (`claude/README.md`, section 7), with one addition: after any ChatGPT plan or feature change, re-check section 2 and re-run the verification checklist, because plan gating has moved several times in 2026.

## Sources (consulted October 2026)

- OpenAI Help Center, Skills in ChatGPT: https://help.openai.com/en/articles/20001066
- OpenAI Academy, Using skills: https://openai.com/academy/skills
- The AI Career Lab, ChatGPT Skills plan availability: https://theaicareerlab.com/blog/chatgpt-skills-what-they-are-how-to-enable-2026
- Carly, ChatGPT connectors list and plan gating: https://www.usecarly.com/blog/chatgpt-connectors/
- PortEden, ChatGPT scheduled tasks with connected apps: https://porteden.com/blog/chatgpt-scheduled-tasks-tools/
