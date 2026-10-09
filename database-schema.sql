-- Database vendor: PostgreSQL.
-- Run in the database used by Ignition connection vlock-db.

BEGIN;

CREATE TABLE IF NOT EXISTS public.ex_vlock_loto_events (
    id BIGSERIAL PRIMARY KEY,
    equipment_name TEXT NOT NULL,
    event_type TEXT NOT NULL,
    username TEXT NOT NULL,
    reason TEXT NOT NULL,
    event_time TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS ex_vlock_loto_events_time_idx
    ON public.ex_vlock_loto_events (event_time DESC);

COMMIT;