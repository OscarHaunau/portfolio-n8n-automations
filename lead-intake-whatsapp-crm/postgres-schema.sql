CREATE TABLE IF NOT EXISTS portfolio_leads (
  id BIGSERIAL PRIMARY KEY,
  trace_id TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  phone TEXT NOT NULL,
  company TEXT,
  source TEXT,
  interest TEXT,
  budget TEXT,
  priority TEXT NOT NULL,
  score INTEGER NOT NULL,
  status TEXT NOT NULL DEFAULT 'new',
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
