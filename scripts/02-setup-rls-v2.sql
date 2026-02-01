-- SETUP ROW LEVEL SECURITY (SIMPLE VERSION)
-- Run this after 01-create-tables-v2.sql

-- Disable RLS temporarily to avoid recursion issues
ALTER TABLE users DISABLE ROW LEVEL SECURITY;
ALTER TABLE shops DISABLE ROW LEVEL SECURITY;
ALTER TABLE purchases DISABLE ROW LEVEL SECURITY;
ALTER TABLE referrals DISABLE ROW LEVEL SECURITY;
ALTER TABLE rewards DISABLE ROW LEVEL SECURITY;
ALTER TABLE withdrawals DISABLE ROW LEVEL SECURITY;

-- Note: We're disabling RLS for now to avoid infinite recursion issues
-- In production, you should implement proper RLS policies
