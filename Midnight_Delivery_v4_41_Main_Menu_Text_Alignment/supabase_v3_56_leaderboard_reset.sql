-- Midnight Delivery leaderboard reset + versioning migration
-- Run this once in Supabase SQL Editor.

alter table public.midnight_scores
add column if not exists game_version text;

delete from public.midnight_scores;

-- Optional but recommended: default future rows to current scoring version if client omits it.
alter table public.midnight_scores
alter column game_version set default 'v3.56';

-- Optional index for faster filtered leaderboards.
create index if not exists midnight_scores_game_version_score_idx
on public.midnight_scores (game_version, score desc);
