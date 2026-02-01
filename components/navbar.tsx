"use client"

import { useEffect, useState } from "react"
import Link from "next/link"
import { useRouter } from "next/navigation"
import { createClient } from "@/lib/supabase/client"
import { Button } from "@/components/ui/button"
import { ShieldCheck, LogOut, Menu, X } from "lucide-react"

export function Navbar() {
  const [userName, setUserName] = useState("")
  const [isAdmin, setIsAdmin] = useState(false)
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false)
  const router = useRouter()
  const supabase = createClient()

  useEffect(() => {
    const getUser = async () => {
      const {
        data: { user },
      } = await supabase.auth.getUser()
      if (user) {
        const { data: profile } = await supabase.from("users").select("full_name, is_admin").eq("id", user.id).single()

        if (profile) {
          setUserName(profile.full_name)
          setIsAdmin(profile.is_admin || false)
        }
      }
    }
    getUser()
  }, [supabase])

  const handleLogout = async () => {
    await supabase.auth.signOut()
    router.push("/")
  }

  return (
    <header className="border-b border-border bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60 sticky top-0 z-50">
      <div className="container mx-auto px-4 py-4 flex items-center justify-between">
        <Link href="/dashboard" className="flex items-center gap-2">
          <ShieldCheck className="h-8 w-8 text-primary" />
          <span className="text-xl font-bold">TaxSahayak</span>
        </Link>

        {/* Desktop Navigation */}
        <nav className="hidden md:flex items-center gap-6">
          <Link href="/dashboard" className="text-sm hover:text-primary transition-colors">
            Dashboard
          </Link>
          <Link href="/report-purchase" className="text-sm hover:text-primary transition-colors">
            Report Purchase
          </Link>
          <Link href="/my-purchases" className="text-sm hover:text-primary transition-colors">
            My Reports
          </Link>
          <Link href="/rewards" className="text-sm hover:text-primary transition-colors">
            Rewards
          </Link>
          <Link href="/profile" className="text-sm hover:text-primary transition-colors">
            Profile
          </Link>
          {isAdmin && (
            <Link href="/admin" className="text-sm hover:text-primary transition-colors font-semibold text-primary">
              Admin Dashboard
            </Link>
          )}
        </nav>

        {/* Desktop User Actions */}
        <div className="hidden md:flex items-center gap-3">
          {userName && <span className="text-sm text-muted-foreground">{userName}</span>}
          <Button variant="ghost" size="sm" onClick={handleLogout}>
            <LogOut className="h-4 w-4 mr-2" />
            Logout
          </Button>
        </div>

        {/* Mobile Menu Button */}
        <Button variant="ghost" size="sm" className="md:hidden" onClick={() => setMobileMenuOpen(!mobileMenuOpen)}>
          {mobileMenuOpen ? <X className="h-5 w-5" /> : <Menu className="h-5 w-5" />}
        </Button>
      </div>

      {/* Mobile Menu */}
      {mobileMenuOpen && (
        <div className="md:hidden border-t border-border bg-background">
          <nav className="container mx-auto px-4 py-4 flex flex-col gap-3">
            <Link
              href="/dashboard"
              className="text-sm hover:text-primary transition-colors py-2"
              onClick={() => setMobileMenuOpen(false)}
            >
              Dashboard
            </Link>
            <Link
              href="/report-purchase"
              className="text-sm hover:text-primary transition-colors py-2"
              onClick={() => setMobileMenuOpen(false)}
            >
              Report Purchase
            </Link>
            <Link
              href="/my-purchases"
              className="text-sm hover:text-primary transition-colors py-2"
              onClick={() => setMobileMenuOpen(false)}
            >
              My Reports
            </Link>
            <Link
              href="/rewards"
              className="text-sm hover:text-primary transition-colors py-2"
              onClick={() => setMobileMenuOpen(false)}
            >
              Rewards
            </Link>
            <Link
              href="/profile"
              className="text-sm hover:text-primary transition-colors py-2"
              onClick={() => setMobileMenuOpen(false)}
            >
              Profile
            </Link>
            {isAdmin && (
              <Link
                href="/admin"
                className="text-sm hover:text-primary transition-colors py-2 font-semibold text-primary"
                onClick={() => setMobileMenuOpen(false)}
              >
                Admin Dashboard
              </Link>
            )}
            <div className="pt-3 border-t border-border">
              <Button variant="ghost" size="sm" onClick={handleLogout} className="w-full justify-start">
                <LogOut className="h-4 w-4 mr-2" />
                Logout
              </Button>
            </div>
          </nav>
        </div>
      )}
    </header>
  )
}
