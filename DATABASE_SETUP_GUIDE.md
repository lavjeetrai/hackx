# Database Setup Guide for TaxSahayak Platform

This guide will help you set up a fresh database for the tax income platform.

## Step 1: Reset the Database

Run the following SQL scripts **in order** from the scripts folder:

### 1. Reset Everything (scripts/00-reset-database.sql)
This drops all existing tables and starts fresh. Run this first.

### 2. Create Tables (scripts/01-create-tables-v2.sql)
This creates all the necessary tables:
- users (with profile information)
- shops (business locations)
- purchases (user purchase reports)
- rewards (point transactions)
- withdrawal_requests (money withdrawal tracking)

### 3. Disable RLS (scripts/02-setup-rls-v2.sql)
This disables Row Level Security to avoid infinite recursion errors.
For production, you should implement proper RLS policies later.

### 4. Auto-confirm Users (scripts/03-auto-confirm-users-v2.sql)
This sets up a trigger to automatically confirm user emails on signup,
so users can login immediately without email verification.

## Step 2: Test the Setup

After running all scripts:
1. Try signing up with a new account
2. Check if you can login immediately
3. Verify that the dashboard loads without errors
4. Test reporting a purchase
5. Check rewards functionality

## Troubleshooting

If you get errors:
- Make sure you ran all scripts in order
- Check that all environment variables are set in the Vars section
- Try refreshing the page after signup/login
- Check the browser console for detailed error messages

## Environment Variables Needed

These should already be set:
- NEXT_PUBLIC_SUPABASE_URL
- NEXT_PUBLIC_SUPABASE_ANON_KEY
- SUPABASE_SERVICE_ROLE_KEY
- NEXT_PUBLIC_DEV_SUPABASE_REDIRECT_URL (optional, for development)
