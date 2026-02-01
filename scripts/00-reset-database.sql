-- DROP ALL TABLES AND POLICIES
-- This will completely reset your database

-- Drop all policies first
DROP POLICY IF EXISTS "Users can view own profile" ON users;
DROP POLICY IF EXISTS "Users can update own profile" ON users;
DROP POLICY IF EXISTS "Enable insert for authenticated users" ON users;
DROP POLICY IF EXISTS "Enable read access for all users" ON users;

-- Drop all tables (order matters due to foreign keys)
DROP TABLE IF EXISTS withdrawals CASCADE;
DROP TABLE IF EXISTS rewards CASCADE;
DROP TABLE IF EXISTS purchases CASCADE;
DROP TABLE IF EXISTS referrals CASCADE;
DROP TABLE IF EXISTS shops CASCADE;
DROP TABLE IF EXISTS users CASCADE;

-- Drop any custom types if they exist
DROP TYPE IF EXISTS withdrawal_status CASCADE;
DROP TYPE IF EXISTS purchase_status CASCADE;
