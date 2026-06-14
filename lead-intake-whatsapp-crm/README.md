# n8n Automation: Lead Intake + WhatsApp + CRM

## Business case

Commercial teams often lose leads because manual follow-up is slow and lead data enters through disconnected channels. This workflow captures a lead, validates it, normalizes fields, stores it in a CRM-like destination, and triggers fast follow-up.

## Flow

`Webhook → Validate + Normalize → IF Valid → Store in CRM → WhatsApp Follow-up → Internal Email → Response`

## Nodes used

- Webhook Trigger
- Code node for validation, normalization and lead scoring
- IF node for valid/invalid routing
- Google Sheets or PostgreSQL as CRM storage options
- HTTP Request for WhatsApp Cloud API
- Email Send for internal sales alert
- Respond to Webhook

## Sample request

```bash
curl -X POST http://localhost:5678/webhook/portfolio/lead-intake   -H "Content-Type: application/json"   -d @sample-payload.json
```

## Environment / credentials

See `.env.example`. Do not hardcode real tokens in the workflow.

## Demo script

1. Import `workflow.n8n.json` into n8n.
2. Execute the workflow in test mode.
3. Send `sample-payload.json` to the test webhook URL.
4. Show how the Code node normalizes and scores the lead.
5. Explain that Google Sheets/Postgres/WhatsApp/email nodes are disabled until credentials are configured.

## Portfolio talking points

- Converts manual lead handling into an automated process.
- Uses trace IDs for operational visibility.
- Avoids sending real messages until configured.
- Can be extended into HubSpot/Pipedrive/Notion/Airtable CRM.
