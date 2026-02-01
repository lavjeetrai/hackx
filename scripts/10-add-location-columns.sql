-- Add location columns to shops table for GPS coordinates
ALTER TABLE shops ADD COLUMN IF NOT EXISTS latitude DECIMAL(10, 8);
ALTER TABLE shops ADD COLUMN IF NOT EXISTS longitude DECIMAL(11, 8);

-- Add location columns to purchases table to store where purchase was made
ALTER TABLE purchases ADD COLUMN IF NOT EXISTS latitude DECIMAL(10, 8);
ALTER TABLE purchases ADD COLUMN IF NOT EXISTS longitude DECIMAL(11, 8);
ALTER TABLE purchases ADD COLUMN IF NOT EXISTS location_verified BOOLEAN DEFAULT FALSE;

-- Comment for clarity
COMMENT ON COLUMN shops.latitude IS 'GPS latitude of shop location';
COMMENT ON COLUMN shops.longitude IS 'GPS longitude of shop location';
COMMENT ON COLUMN purchases.latitude IS 'GPS latitude where purchase was reported';
COMMENT ON COLUMN purchases.longitude IS 'GPS longitude where purchase was reported';
COMMENT ON COLUMN purchases.location_verified IS 'Whether location matches shop location';
