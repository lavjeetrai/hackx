-- Enable Row Level Security
ALTER TABLE users ENABLE ROW LEVEL SECURITY;
ALTER TABLE shops ENABLE ROW LEVEL SECURITY;
ALTER TABLE purchases ENABLE ROW LEVEL SECURITY;
ALTER TABLE rewards ENABLE ROW LEVEL SECURITY;
ALTER TABLE withdrawals ENABLE ROW LEVEL SECURITY;
ALTER TABLE analytics ENABLE ROW LEVEL SECURITY;

-- Users policies
CREATE POLICY "Users can view own profile"
  ON users FOR SELECT
  USING (auth.uid() = id);

CREATE POLICY "Users can update own profile"
  ON users FOR UPDATE
  USING (auth.uid() = id);

CREATE POLICY "Anyone can insert user during signup"
  ON users FOR INSERT
  WITH CHECK (true);

-- Shops policies
CREATE POLICY "Anyone can view shops"
  ON shops FOR SELECT
  USING (true);

CREATE POLICY "Authenticated users can create shops"
  ON shops FOR INSERT
  WITH CHECK (auth.uid() = reported_by);

-- Purchases policies
CREATE POLICY "Users can view own purchases"
  ON purchases FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can create own purchases"
  ON purchases FOR INSERT
  WITH CHECK (auth.uid() = user_id);

-- Rewards policies
CREATE POLICY "Users can view own rewards"
  ON rewards FOR SELECT
  USING (auth.uid() = user_id);

-- Withdrawals policies
CREATE POLICY "Users can view own withdrawals"
  ON withdrawals FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can create own withdrawals"
  ON withdrawals FOR INSERT
  WITH CHECK (auth.uid() = user_id);

-- Analytics policies (admin only - adjust based on your admin setup)
CREATE POLICY "Analytics are public for now"
  ON analytics FOR SELECT
  USING (true);
