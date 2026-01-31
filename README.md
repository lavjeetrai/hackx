# TaxSahayak - AI-Powered Income Tax Reporting Platform

> An intelligent platform for Indian citizens to report shop purchases, earn rewards, and contribute to tax compliance using modern web technologies and AI-assisted development.

![Version](https://img.shields.io/badge/version-1.0.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Status](https://img.shields.io/badge/status-production%20ready-brightgreen)


## 🔗 Live Demo
**Access the platform here:** [https://taxsahyogbylavjeet.vercel.app/](https://taxsahyogbylavjeet.vercel.app/)

---

##  Problem Statement

**Challenge:** India faces significant tax compliance gaps where informal retail transactions remain largely untracked, resulting in lost tax revenue and limited transparency in the economy.

**Solution:** TaxSahayak provides a user-friendly platform that incentivizes citizens to report purchases through:
- Reward-based gamification (users earn points for reporting)
- Seamless Aadhaar verification for identity proof
- Easy bill upload and purchase tracking
- Transparent reward redemption system
- Admin oversight for compliance verification

**Target Users:**
- Individual citizens wanting to support tax compliance
- Shop owners seeking to establish legitimacy
- Government agencies monitoring tax compliance
- Regular consumers earning rewards

---

##  Architecture Diagram

```
┌─────────────────────────────────────────────────────────────┐
│                      CLIENT LAYER                            │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │  Web Browser │  │  Mobile Web  │  │   Desktop   │      │
│  │   (React)    │  │   (React)    │  │  (React)    │      │
│  └──────────────┘  └──────────────┘  └──────────────┘      │
└────────────┬────────────────────────────────────────────────┘
             │ HTTPS
┌────────────▼────────────────────────────────────────────────┐
│              NEXT.JS APPLICATION SERVER                      │
│  ┌────────────────────────────────────────────────────┐    │
│  │          Pages & API Routes (App Router)           │    │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐        │    │
│  │  │  Auth    │  │ Dashboard│  │  Admin   │        │    │
│  │  │  Pages   │  │  Pages   │  │  Pages   │        │    │
│  │  └──────────┘  └──────────┘  └──────────┘        │    │
│  └────────────────────────────────────────────────────┘    │
│  ┌────────────────────────────────────────────────────┐    │
│  │         Middleware & Server Components              │    │
│  │     (Authentication, RLS Verification)             │    │
│  └────────────────────────────────────────────────────┘    │
└────────────┬────────────────────────────────────────────────┘
             │ REST API / PostgreSQL
┌────────────▼────────────────────────────────────────────────┐
│           SUPABASE (Backend as a Service)                   │
│  ┌──────────────────┐  ┌──────────────────┐               │
│  │  PostgreSQL DB   │  │  Auth Module     │               │
│  │  - users         │  │  - JWT tokens    │               │
│  │  - purchases     │  │  - Email conf.   │               │
│  │  - rewards       │  │  - OTP verify    │               │
│  │  - shops         │  │                  │               │
│  │  - withdrawals   │  └──────────────────┘               │
│  └──────────────────┘                                      │
│  ┌──────────────────┐  ┌──────────────────┐               │
│  │  Row Level       │  │  Realtime        │               │
│  │  Security (RLS)  │  │  Subscriptions   │               │
│  │  - User isolation│  │  - Updates       │               │
│  │  - Admin access  │  │  - Notifications │               │
│  │  - Data privacy  │  │                  │               │
│  └──────────────────┘  └──────────────────┘               │
└────────────────────────────────────────────────────────────┘
```

---

##  Tech Stack

### Frontend
- **Framework**: Next.js 16 (App Router)
- **Language**: TypeScript
- **Styling**: Tailwind CSS v4
- **UI Components**: Shadcn/ui + Radix UI
- **Form Handling**: React Hook Form + Zod validation
- **HTTP Client**: Supabase Client (SSR)

### Backend
- **Runtime**: Node.js (Next.js API Routes)
- **Database**: PostgreSQL (via Supabase)
- **Authentication**: Supabase Auth (JWT + Email/OTP)
- **Authorization**: Row Level Security (RLS)
- **Session Management**: Supabase SSR

### DevOps & Deployment
- **Hosting**: Vercel (Next.js optimized)
- **Database Hosting**: Supabase Cloud
- **CI/CD**: Git-based (Vercel auto-deploy)
- **Package Manager**: npm

### Development Tools
- **Version Control**: Git/GitHub
- **Code Quality**: TypeScript, ESLint
- **Design System**: Tailwind CSS
- **Component Library**: Lucide React icons

---

##  Setup Instructions

### Prerequisites
- Node.js 18+
- npm 9+
- Git
- Supabase account (free tier works)
- GitHub account (for version control)

### Step 1: Clone Repository
```bash
git clone https://github.com/akashpandey233-arch/taxsahayak.git
cd taxsahayak
```

### Step 2: Install Dependencies
```bash
npm install
```

### Step 3: Setup Supabase Project
1. Go to [supabase.com](https://supabase.com) and create a new project
2. Note your Project URL and Anon Key
3. Run database migration scripts (see DATABASE_SETUP_GUIDE.md)

### Step 4: Configure Environment Variables
Create `.env.local` file:
```env
NEXT_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key
SUPABASE_SERVICE_ROLE_KEY=your-service-role-key
NEXT_PUBLIC_DEV_SUPABASE_REDIRECT_URL=http://localhost:3000/verify-aadhaar
```

### Step 5: Run Database Migrations
```bash
# Execute SQL scripts in Supabase SQL Editor
# 1. scripts/00-reset-database.sql
# 2. scripts/01-create-tables-v2.sql
# 3. scripts/02-setup-rls-v2.sql
# 4. scripts/03-auto-confirm-users-v2.sql
```

### Step 6: Start Development Server
```bash
npm run dev
```

Access app at `http://localhost:3000`

### Step 7: Create Admin Account
1. Sign up as regular user
2. Run in Supabase SQL Editor:
```sql
UPDATE users SET is_admin = TRUE WHERE email = 'your-email@example.com';
```
3. Logout and login again
4. Access `/admin` dashboard

---

##  AI Tools Used

### Development & Code Generation
- **v0 by Vercel** - AI-powered UI component generation 
  - Generated component structure and layouts
  - Created form validation logic
  - Built authentication flow
  - Generated database schema

### Design & UX
- **Cursor AI** - Intelligent code editor for refactoring
- **GitHub Copilot** - Code completion and pattern suggestions

### Database & Backend
- **Supabase AI** - SQL optimization and schema assistance
- **ChatGPT** - RLS policy generation and security review

### Deployment
- **Vercel AI** - Performance optimization suggestions

---

##  Prompt Strategy Summary

### Phase 1: Architecture & Planning
**Prompts Used:**
```
"Design a scalable tax reporting platform with user authentication, 
purchase tracking, and admin dashboard. Include reward system with 
point conversion to cash."
```

**Outcome:** Complete system architecture, database schema, user flows

### Phase 2: Database Design
**Prompts Used:**
```
"Create PostgreSQL schema for users, purchases, rewards, and admin 
tracking. Include RLS policies for multi-tenant security. Add referral 
system with point tracking."
```

**Outcome:** v2 database schema with RLS policies, auto-confirmation triggers

### Phase 3: Frontend Pages
**Prompts Used:**
```
"Generate responsive React/Next.js pages for:
- User authentication (signup/login)
- Aadhaar verification with OTP
- Purchase reporting with bill upload
- Rewards dashboard
- Admin management panels"
```

**Outcome:** 8+ complete pages with forms, validation, state management

### Phase 4: API Integration
**Prompts Used:**
```
"Create Supabase client utilities for:
- Server-side authentication
- Middleware for protected routes
- Real-time data syncing
- Error handling and retry logic"
```

**Outcome:** Complete authentication middleware, server utilities, error handling

### Phase 5: UI/UX Polish
**Prompts Used:**
```
"Design professional, accessible UI using Tailwind CSS and Shadcn/ui 
components. Follow modern design patterns for forms, modals, and navigation."
```

**Outcome:** Polished component library, consistent styling, accessibility compliance

---

##  Final Output

### Delivered Features
 **User Authentication**
- Email/password signup with confirmation
- Secure login with session management
- Password reset via email
- Phone number verification

 **Aadhaar Verification**
- Two-step OTP verification process
- Secure Aadhaar data storage
- Compliance with India Stack guidelines

 **Purchase Reporting**
- Shop search and selection
- Bill upload with validation
- Purchase tracking and history
- Approval workflow

 **Rewards System**
- Point-based rewards (₹100 welcome bonus)
- Purchase-based point calculation
- Real-time point tracking
- Leaderboard integration

 **Referral Program**
- Unique referral links per user
- Bonus points for successful referrals
- Multi-level referral tracking
- Referral analytics

 **Admin Dashboard**
- Purchase approval workflow
- Withdrawal request management
- Shop management and verification
- Revenue analytics and reports
- User management

 **Security**
- Row Level Security (RLS) for data isolation
- JWT token-based authentication
- Secure password hashing
- Protected API routes

**Performance**
- Server-side rendering for fast loads
- Optimized database queries
- Image lazy loading
- Responsive design for all devices

### Pages Built (18 Total)
```
├── app/page.tsx                      [Landing/Home]
├── app/signup/page.tsx               [User Registration]
├── app/login/page.tsx                [User Login]
├── app/verify-aadhaar/page.tsx       [Aadhaar Verification]
├── app/dashboard/page.tsx            [User Dashboard]
├── app/report-purchase/page.tsx      [Purchase Reporting]
├── app/report-purchase/loading.tsx   [Loading State]
├── app/my-purchases/page.tsx         [Purchase History]
├── app/rewards/page.tsx              [Rewards & Points]
├── app/profile/page.tsx              [User Profile]
├── app/withdraw/page.tsx             [Withdrawal Requests]
├── app/admin/page.tsx                [Admin Dashboard]
├── app/admin/purchases/page.tsx      [Manage Purchases]
├── app/admin/withdrawals/page.tsx    [Manage Withdrawals]
├── app/admin/shops/page.tsx          [Shop Management]
└── app/admin/shop-revenue/page.tsx   [Revenue Reports]
```

---

## 🔄 Build Reproducibility Instructions

### Full Build From Scratch

#### Step 1: Clone and Install
```bash
git clone https://github.com/yourusername/taxsahayak.git
cd taxsahayak
npm install
```

#### Step 2: Database Setup (Critical - DO THIS FIRST)
```bash
# Create new Supabase project
# Go to: https://app.supabase.com/projects
# Create new project and note credentials

# Run SQL migrations in order (Supabase SQL Editor):
# 1. SELECT * FROM scripts/01-create-tables-v2.sql
# 2. SELECT * FROM scripts/02-setup-rls-v2.sql
# 3. SELECT * FROM scripts/03-auto-confirm-users-v2.sql
```

#### Step 3: Environment Configuration
```bash
# Copy sample env file
cp .env.example .env.local

# Edit .env.local with your Supabase credentials
NEXT_PUBLIC_SUPABASE_URL=https://[YOUR_PROJECT].supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=[YOUR_ANON_KEY]
SUPABASE_SERVICE_ROLE_KEY=[YOUR_SERVICE_ROLE_KEY]
NEXT_PUBLIC_DEV_SUPABASE_REDIRECT_URL=http://localhost:3000/verify-aadhaar
```

#### Step 4: Verify Configuration
```bash
# Check environment variables are loaded
node -e "console.log(process.env.NEXT_PUBLIC_SUPABASE_URL)"

# Should print your Supabase URL
```

#### Step 5: Start Development Server
```bash
npm run dev
# Server running at http://localhost:3000
```

#### Step 6: Test Core Flows
```
1. Visit http://localhost:3000
2. Test signup at /signup
3. Verify email confirmation works
4. Login and complete Aadhaar verification
5. Test purchase reporting
6. Check admin dashboard at /admin
```

#### Step 7: Build for Production
```bash
# Create optimized production build
npm run build

# Test production build locally
npm run start
# Access at http://localhost:3000
```

#### Step 8: Deploy to Vercel
```bash
# Install Vercel CLI
npm i -g vercel

# Deploy
vercel

# Follow prompts and select your project
# Set environment variables in Vercel dashboard
# Deployment complete!
```

### Reproducibility Checklist

Use this checklist to ensure full reproducibility:

- [ ] Node.js version 18+ installed (`node --version`)
- [ ] All npm dependencies installed (`npm list`)
- [ ] Supabase project created and accessible
- [ ] All 3 SQL migration scripts executed in order
- [ ] Environment variables correctly set in `.env.local`
- [ ] Development server starts without errors (`npm run dev`)
- [ ] Can sign up new user and receive email confirmation
- [ ] Can login and access dashboard
- [ ] Admin features accessible after running admin SQL command
- [ ] Production build completes (`npm run build`)
- [ ] No TypeScript errors (`npx tsc --noEmit`)
- [ ] All pages load without console errors
- [ ] Database queries run efficiently (check Supabase logs)

### Troubleshooting

**Email not sending?**
- Check Supabase email limit (50/day free tier)
- Configure SMTP in Supabase settings (SendGrid/Mailgun)
- See email configuration section in main README

**RLS policy errors?**
- Verify all SQL scripts executed in correct order
- Check row_level_security enabled on all tables
- Confirm service role key has admin access

**Database connection issues?**
- Verify NEXT_PUBLIC_SUPABASE_URL is correct
- Check SUPABASE_SERVICE_ROLE_KEY has permissions
- Test connection: `supabase status`

**Build failures?**
- Clear node_modules: `rm -rf node_modules && npm install`
- Clear Next.js cache: `rm -rf .next`
- Check TypeScript: `npx tsc --noEmit`

---

##  Database Schema

### Core Tables
- **users** - User accounts and profiles
- **purchases** - Reported shop purchases
- **rewards** - Points and redemption tracking
- **withdrawals** - Cash withdrawal requests
- **shops** - Registered shop information
- **referrals** - Referral program tracking

### Security
- All tables protected by RLS policies
- User data isolated by user_id
- Admin operations tracked with timestamps
- Sensitive data encrypted at rest

---

##  Project Structure

```
taxsahayak/
├── app/                          # Next.js App Router
│   ├── (auth)/                   # Authentication pages
│   ├── (dashboard)/              # User dashboard pages
│   ├── admin/                    # Admin dashboard
│   └── layout.tsx                # Root layout
├── components/
│   ├── ui/                       # Shadcn/ui components
│   ├── forms/                    # Form components
│   └── layouts/                  # Layout components
├── lib/
│   ├── supabase/                 # Supabase clients
│   ├── utils/                    # Utility functions
│   └── types.ts                  # TypeScript types
├── scripts/                      # Database migrations
│   ├── 01-create-tables-v2.sql
│   ├── 02-setup-rls-v2.sql
│   └── 03-auto-confirm-users-v2.sql
├── middleware.ts                 # Next.js middleware
├── package.json                  # Dependencies
└── tsconfig.json                 # TypeScript config
```

---



