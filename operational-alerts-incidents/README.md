# n8n Automation: Operational Alerts + Incident Escalation

## Business case

Back-office and Tech Operations teams need fast visibility when internal systems, providers or SLAs fail. This workflow receives or generates operational events, classifies severity, logs the incident and alerts the right channel.

## Flow

`Webhook/Schedule → Normalize Incident → Switch Severity → Log → WhatsApp/Email Alert → Response`

## Nodes used

- Schedule Trigger for recurring health-check style execution
- Webhook Trigger for external event intake
- Code node for normalization and severity classification
- Switch node for critical/warning/info routing
- PostgreSQL optional incident log
- HTTP Request for WhatsApp alert
- Email Send for critical/warning alert
- Respond to Webhook

## Sample request

```bash
curl -X POST http://localhost:5678/webhook/portfolio/incident-event   -H "Content-Type: application/json"   -d @sample-critical-event.json
```

## Demo script

1. Import `workflow.n8n.json` into n8n.
2. Test webhook mode with `sample-critical-event.json`.
3. Test schedule mode manually to show the built-in demo event.
4. Show severity routing: critical sends WhatsApp/email, warning sends email, info only registers.
5. Explain SLA fields and escalation extension.

## Portfolio talking points

- Demonstrates Tech Operations thinking: incident IDs, severity, SLA, traceability.
- Uses separate routing for critical/warning/info.
- Can integrate with provider health checks, backend logs, CRM status, payment webhooks or support queues.
