# Portfolio n8n Automations — Oscar Haunau

Two n8n portfolio prototypes for **Full Stack Automation Engineer / Tech Operations** roles.

## Projects

1. **Lead Intake + WhatsApp + CRM**
   - Captures leads via Webhook.
   - Validates and normalizes contact data.
   - Scores lead priority.
   - Stores the lead in Google Sheets or PostgreSQL.
   - Triggers WhatsApp follow-up and internal email notification.

2. **Operational Alerts + Incident Escalation**
   - Receives incident events by Webhook or runs scheduled health-check demo.
   - Normalizes event data and classifies severity.
   - Logs incidents.
   - Sends alerts by WhatsApp/email and supports SLA escalation logic.

## Portfolio positioning

These workflows demonstrate practical automation skills: Webhooks, conditional routing, data normalization, API calls, CRM-style persistence, WhatsApp/email notifications, logs, SLA thinking, and safe use of environment variables.

## Import

In n8n: **Workflows → Import from File** and select each `workflow.n8n.json`.

External action nodes are disabled by default to prevent accidental real messages. Configure credentials/environment values, then enable the nodes you want to demo.
