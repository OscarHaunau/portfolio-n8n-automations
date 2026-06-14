CREATE TABLE IF NOT EXISTS portfolio_incidents (
  id BIGSERIAL PRIMARY KEY,
  incident_id TEXT UNIQUE NOT NULL,
  source TEXT NOT NULL,
  service TEXT NOT NULL,
  status TEXT NOT NULL,
  severity TEXT NOT NULL,
  message TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  sla_minutes INTEGER NOT NULL,
  resolved_at TIMESTAMPTZ
);
