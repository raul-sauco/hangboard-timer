-- Expose some user data.
create table public.profile (
  id uuid not null references auth.users on delete cascade primary key,
  avatar_url text,
  first_name text,
  middle_name text,
  last_name text,
  handle text
);

alter table public.profile enable row level security;

create policy "Public profiles are viewable by everyone." on profile for
select using (true);

create policy "Users can insert their own profile." on profile for
insert with check (auth.uid() = id);

create policy "Users can update own profile." on profile for
update using (auth.uid() = id);

-- Encapsulates one training session that is supposed to be done is one go.
create table public.session (
  id uuid not null default uuid_generate_v4() primary key,
  session_name text,
  details jsonb,
  created_at timestamp with time zone not null default now(),
  created_by uuid references auth.users on delete
  set null
);

-- Useless at the moment but can be updated later.
alter table "public"."session" enable row level security;

create policy "All sessions are readable by anyone." on session for
select using (true);

create policy "New sessions are writable by anyone." on session for
insert with check (true);

create policy "Anyone can update existing sessions." on session for
update using (true);