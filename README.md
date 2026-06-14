# Portfolio n8n Automations — Oscar Haunau

## n8n automation portfolio for marketing, sales and operations

These are two practical n8n automations built as portfolio projects for agencies and teams that need to reduce manual work, respond faster to leads, and keep internal operations under control.

<p align="center">
  <img src="assets/lead-intake-workflow.png" alt="Lead Intake WhatsApp CRM n8n workflow" width="48%" />
  <img src="assets/incident-alerts-workflow.png" alt="Operational Alerts n8n workflow" width="48%" />
</p>

## What these workflows do, in simple terms

### 1. Lead Intake + WhatsApp + CRM

This workflow receives potential customer inquiries automatically.

For example: someone fills out a form on a landing page. n8n receives the data, checks that it is valid, organizes the information, calculates if the lead is high priority, and prepares it for commercial follow-up.

It can then:

- Save the lead in Google Sheets or PostgreSQL.
- Notify the sales team by email.
- Send an automatic WhatsApp follow-up message.

**Presentation summary:**

> Automation for capturing leads from forms, validating data, registering them in a CRM or database, and triggering automatic WhatsApp/email follow-up. It reduces manual workload and improves commercial response speed.

### 2. Operational Alerts + Incident Escalation

This workflow detects operational problems and alerts the right team quickly.

For example: if an API fails, a system is delayed, an external provider responds incorrectly, or an internal process is stuck, n8n receives the event, classifies it as warning or critical, and generates an alert.

It can then:

- Register the incident.
- Notify the team by email or WhatsApp.
- Define priority.
- Assign an SLA response time.
- Escalate critical issues.

**Presentation summary:**

> Automation for registering operational events, classifying incidents by severity, and triggering email/WhatsApp alerts with SLA logic. It is designed for technical support, back-office operations and service monitoring.

## Why this matters for a marketing agency

- Faster response to incoming leads.
- Less manual copy-paste between forms, sheets and CRMs.
- Better traceability of commercial opportunities.
- Clear alerts when internal processes or providers fail.
- Practical n8n workflows that can be adapted to real clients.

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

## Tested locally

Both workflows were imported and tested on a local n8n instance running at `http://localhost:5678`.

### Lead Intake + WhatsApp + CRM

Valid lead test:

```bash
curl -X POST "http://localhost:5678/webhook-test/portfolio/lead-intake" \
  -H "Content-Type: application/json" \
  -d @"/Users/oscarhaunau/Documents/Postulaciones/Moon/portfolio-n8n-automations/lead-intake-whatsapp-crm/sample-payload.json"
```

Expected response:

```json
{
  "status": "accepted",
  "trace_id": "lead_...",
  "priority": "hot",
  "message": "Lead received and queued for follow-up"
}
```

Invalid lead test:

```bash
curl -X POST "http://localhost:5678/webhook-test/portfolio/lead-intake" \
  -H "Content-Type: application/json" \
  -d @"/Users/oscarhaunau/Documents/Postulaciones/Moon/portfolio-n8n-automations/lead-intake-whatsapp-crm/sample-invalid-payload.json"
```

Expected response:

```json
{
  "status": "error",
  "message": "Invalid lead payload",
  "errors": ["Missing name", "Invalid email", "Invalid phone"]
}
```

### Operational Alerts + Incident Escalation

Critical incident test:

```bash
curl -X POST "http://localhost:5678/webhook-test/portfolio/incident-event" \
  -H "Content-Type: application/json" \
  -d @"/Users/oscarhaunau/Documents/Postulaciones/Moon/portfolio-n8n-automations/operational-alerts-incidents/sample-critical-event.json"
```

Expected response:

```json
{
  "status": "registered",
  "incident_id": "inc_...",
  "severity": "critical",
  "sla_minutes": 15
}
```

Warning incident test:

```bash
curl -X POST "http://localhost:5678/webhook-test/portfolio/incident-event" \
  -H "Content-Type: application/json" \
  -d @"/Users/oscarhaunau/Documents/Postulaciones/Moon/portfolio-n8n-automations/operational-alerts-incidents/sample-warning-event.json"
```

Expected response:

```json
{
  "status": "registered",
  "incident_id": "inc_...",
  "severity": "warning",
  "sla_minutes": 60
}
```

> Note: The external action nodes for WhatsApp, email, Google Sheets and PostgreSQL are disabled by default to avoid sending real messages or writing to real services without credentials.
