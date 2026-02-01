-- INSTRUCTIONS: Replace 'YOUR_EMAIL_HERE' with your actual signup email
-- Then run this script to make yourself an admin

UPDATE users 
SET is_admin = TRUE 
WHERE email = 'YOUR_EMAIL_HERE@example.com';

-- Verify it worked
SELECT email, full_name, is_admin 
FROM users 
WHERE is_admin = TRUE;
