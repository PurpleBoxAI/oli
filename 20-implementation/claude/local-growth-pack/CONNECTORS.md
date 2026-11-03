# Connections this plugin uses

All connections are made by the owner, in the owner's own Claude account. Nothing is hosted by anyone else.

- Gmail: create drafts only. Used by `lead-followup`.
- Google Calendar: create reminders. Used by `lead-followup`.
- Google Drive: read the Lead Log sheet. Used by `lead-followup`, `monthly-owner-report`, `intake-script-tuner`, `ads-weekly-review` (cross-check).
- Google Ads: read-only, optional. Used by `ads-weekly-review` and `monthly-owner-report`. If no Google Ads connection is available in the owner's Claude account, the owner exports the weekly campaign and search-terms reports and the skill reads the files. The method works either way.
- Google Analytics: read-only, optional. Adds one step to `ads-weekly-review`; skipped if not connected.
- Google Business Profile: no connection assumed. The owner pastes new reviews; `reviews-and-profile` drafts replies.

Verify which Google connections your Claude plan offers at setup time; availability changes. The setup guide lists what to check.
