# Contributing

Thank you for helping make this package better for local service owners.

## What we accept

- Fixes and clarifications to the method and the guides.
- New stack editions under `20-implementation/`, following the same seven-section outline as the Claude and ChatGPT guides.
- Brand-neutral improvements to the templates.

## What we do not accept

- Customer names, customer data or anything filled in for one business. Keep those in your own copy.
- Prices, plan features or product claims without a source and an as-of date.
- Em dashes. House style uses commas, periods and parentheses.
- Anything that lets the assistant send messages or change ads without the owner doing it. The guardrails in `10-methodology/05-guardrails.md` are not negotiable.

## How

1. Open an issue or a discussion first for anything beyond a typo, so we agree on the change.
2. Fork, branch, edit, and run `bash scripts/check-content.sh` before you push. The same check runs on every pull request.
3. Open a pull request with a short description of what changed and why.

Franchisors: if you adapt the package for your brand, you may keep your brand language in your own fork under the license terms. Send back the parts that are brand-neutral.

## License

By contributing you agree that documents and templates are contributed under CC BY 4.0 and plugin code under Apache 2.0 (see the LICENSE files; both pending final legal review).
