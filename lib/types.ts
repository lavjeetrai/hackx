export interface User {
  id: string
  email: string
  aadhaar_number?: string
  aadhaar_verified: boolean
  full_name: string
  phone_number?: string
  preferred_language: string
  total_points: number
  total_earnings: number
  referral_code: string
  referred_by?: string
  created_at: string
  updated_at: string
}

export interface Shop {
  id: string
  shop_name: string
  owner_name?: string
  gst_number?: string
  address: string
  city: string
  state: string
  pincode: string
  phone_number?: string
  category?: string
  verified: boolean
  reported_by?: string
  created_at: string
  updated_at: string
}

export interface Purchase {
  id: string
  user_id: string
  shop_id: string
  bill_number?: string
  bill_image_url?: string
  purchase_amount: number
  purchase_date: string
  description?: string
  status: "pending" | "approved" | "rejected"
  verification_notes?: string
  verified_by?: string
  points_awarded: number
  created_at: string
  updated_at: string
}

export interface Reward {
  id: string
  user_id: string
  points: number
  amount?: number
  type: "purchase_report" | "referral" | "bonus" | "withdrawal"
  description?: string
  purchase_id?: string
  created_at: string
}

export interface Withdrawal {
  id: string
  user_id: string
  amount: number
  upi_id: string
  status: "pending" | "approved" | "rejected" | "paid"
  approved_by?: string
  approved_at?: string
  rejection_reason?: string
  created_at: string
}
