-- Run in Supabase SQL editor if daily_log save fails after UI update.
-- Adjust types to match your existing schema.

alter table public.daily_log
  add column if not exists protein_g integer,
  add column if not exists sleep_hours numeric,
  add column if not exists gym_session boolean default false,
  add column if not exists ate_before_8pm boolean default false,
  add column if not exists weight_lbs numeric;

comment on column public.daily_log.protein_g is 'Daily protein (grams)';
comment on column public.daily_log.sleep_hours is 'Sleep hours last night';
comment on column public.daily_log.gym_session is 'Trained today';
comment on column public.daily_log.ate_before_8pm is 'No food after 8pm';
comment on column public.daily_log.weight_lbs is 'Optional body weight (lbs)';
