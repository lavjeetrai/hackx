import Link from "next/link"
import { Button } from "@/components/ui/button"
import { Card } from "@/components/ui/card"
import { ShieldCheck, Gift, Users, FileText, IndianRupee } from "lucide-react"

export default function HomePage() {
  return (
    <div className="min-h-screen">
      {/* Header */}
      <header className="border-b border-border bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60 sticky top-0 z-50">
        <div className="container mx-auto px-4 py-4 flex items-center justify-between">
          <div className="flex items-center gap-2">
            <ShieldCheck className="h-8 w-8 text-primary" />
            <span className="text-xl font-bold">TaxSahayak</span>
          </div>
          <nav className="hidden md:flex items-center gap-6">
            <Link href="#features" className="text-sm hover:text-primary transition-colors">
              Features
            </Link>
            <Link href="#how-it-works" className="text-sm hover:text-primary transition-colors">
              How It Works
            </Link>
            <Link href="#rewards" className="text-sm hover:text-primary transition-colors">
              Rewards
            </Link>
          </nav>
          <div className="flex items-center gap-3">
            <Link href="/login">
              <Button variant="ghost">Login</Button>
            </Link>
            <Link href="/signup">
              <Button>Sign Up</Button>
            </Link>
          </div>
        </div>
      </header>

      {/* Hero Section */}
      <section className="py-20 px-4 bg-gradient-to-b from-muted to-background">
        <div className="container mx-auto max-w-6xl text-center">
          <h1 className="text-4xl md:text-6xl font-bold mb-6 text-balance">Help Build a Better India</h1>
          <p className="text-xl md:text-2xl text-muted-foreground mb-8 max-w-3xl mx-auto text-balance">
            Report shop purchases, verify with Aadhaar, and earn rewards for helping the Income Tax Department increase
            compliance
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Link href="/signup">
              <Button size="lg" className="bg-primary hover:bg-primary-hover text-white">
                Get Started - Earn ₹100 Bonus
              </Button>
            </Link>
            <Link href="#how-it-works">
              <Button size="lg" variant="outline">
                Learn More
              </Button>
            </Link>
          </div>

          {/* Stats */}
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mt-16 max-w-4xl mx-auto">
            <Card className="p-6">
              <div className="text-3xl font-bold text-primary mb-2">₹50L+</div>
              <div className="text-sm text-muted-foreground">Revenue Reported</div>
            </Card>
            <Card className="p-6">
              <div className="text-3xl font-bold text-primary mb-2">10K+</div>
              <div className="text-sm text-muted-foreground">Active Users</div>
            </Card>
            <Card className="p-6">
              <div className="text-3xl font-bold text-primary mb-2">5K+</div>
              <div className="text-sm text-muted-foreground">Shops Verified</div>
            </Card>
          </div>
        </div>
      </section>

      {/* Features Section */}
      <section id="features" className="py-20 px-4">
        <div className="container mx-auto max-w-6xl">
          <h2 className="text-3xl md:text-4xl font-bold text-center mb-12">Why Join TaxSahayak?</h2>
          <div className="grid md:grid-cols-3 gap-8">
            <Card className="p-6 hover:shadow-lg transition-shadow">
              <Gift className="h-12 w-12 text-accent mb-4" />
              <h3 className="text-xl font-semibold mb-2">Earn Rewards</h3>
              <p className="text-muted-foreground">
                Get points for every purchase you report. Convert points to cash via UPI.
              </p>
            </Card>
            <Card className="p-6 hover:shadow-lg transition-shadow">
              <ShieldCheck className="h-12 w-12 text-secondary mb-4" />
              <h3 className="text-xl font-semibold mb-2">Secure & Verified</h3>
              <p className="text-muted-foreground">
                Aadhaar-based verification ensures authenticity and security of all reports.
              </p>
            </Card>
            <Card className="p-6 hover:shadow-lg transition-shadow">
              <Users className="h-12 w-12 text-primary mb-4" />
              <h3 className="text-xl font-semibold mb-2">Referral Bonuses</h3>
              <p className="text-muted-foreground">Invite friends and earn ₹50 for each successful referral.</p>
            </Card>
          </div>
        </div>
      </section>

      {/* How It Works */}
      <section id="how-it-works" className="py-20 px-4 bg-muted">
        <div className="container mx-auto max-w-6xl">
          <h2 className="text-3xl md:text-4xl font-bold text-center mb-12">How It Works</h2>
          <div className="grid md:grid-cols-4 gap-6">
            <div className="text-center">
              <div className="bg-primary text-white w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-4 text-xl font-bold">
                1
              </div>
              <h3 className="font-semibold mb-2">Sign Up</h3>
              <p className="text-sm text-muted-foreground">Create account with Aadhaar verification</p>
            </div>
            <div className="text-center">
              <div className="bg-primary text-white w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-4 text-xl font-bold">
                2
              </div>
              <h3 className="font-semibold mb-2">Report Purchase</h3>
              <p className="text-sm text-muted-foreground">Upload bill and shop details</p>
            </div>
            <div className="text-center">
              <div className="bg-primary text-white w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-4 text-xl font-bold">
                3
              </div>
              <h3 className="font-semibold mb-2">Earn Points</h3>
              <p className="text-sm text-muted-foreground">Get verified and earn reward points</p>
            </div>
            <div className="text-center">
              <div className="bg-primary text-white w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-4 text-xl font-bold">
                4
              </div>
              <h3 className="font-semibold mb-2">Withdraw Cash</h3>
              <p className="text-sm text-muted-foreground">Convert points to ₹ via UPI</p>
            </div>
          </div>
        </div>
      </section>

      {/* Rewards Section */}
      <section id="rewards" className="py-20 px-4">
        <div className="container mx-auto max-w-6xl">
          <h2 className="text-3xl md:text-4xl font-bold text-center mb-12">Rewards Structure</h2>
          <div className="grid md:grid-cols-2 gap-8 max-w-4xl mx-auto">
            <Card className="p-6 border-2 border-accent">
              <IndianRupee className="h-10 w-10 text-accent mb-4" />
              <h3 className="text-2xl font-semibold mb-2">₹100 Welcome Bonus</h3>
              <p className="text-muted-foreground mb-4">Get instant ₹100 when you verify your Aadhaar</p>
              <ul className="space-y-2 text-sm">
                <li className="flex items-center gap-2">
                  <div className="h-1.5 w-1.5 rounded-full bg-accent" />
                  Complete profile verification
                </li>
                <li className="flex items-center gap-2">
                  <div className="h-1.5 w-1.5 rounded-full bg-accent" />
                  Aadhaar verification required
                </li>
              </ul>
            </Card>
            <Card className="p-6 border-2 border-secondary">
              <FileText className="h-10 w-10 text-secondary mb-4" />
              <h3 className="text-2xl font-semibold mb-2">Per Purchase Report</h3>
              <p className="text-muted-foreground mb-4">Earn 1 point for every ₹10 spent (100 points = ₹1)</p>
              <ul className="space-y-2 text-sm">
                <li className="flex items-center gap-2">
                  <div className="h-1.5 w-1.5 rounded-full bg-secondary" />
                  Upload clear bill photo
                </li>
                <li className="flex items-center gap-2">
                  <div className="h-1.5 w-1.5 rounded-full bg-secondary" />
                  Wait for admin verification
                </li>
              </ul>
            </Card>
          </div>
        </div>
      </section>

      {/* Footer */}
      <footer className="border-t border-border py-12 px-4 bg-muted">
        <div className="container mx-auto max-w-6xl">
          <div className="grid md:grid-cols-4 gap-8 mb-8">
            <div>
              <div className="flex items-center gap-2 mb-4">
                <ShieldCheck className="h-6 w-6 text-primary" />
                <span className="font-bold">TaxSahayak</span>
              </div>
              <p className="text-sm text-muted-foreground">Empowering citizens to contribute to tax compliance</p>
            </div>
            <div>
              <h4 className="font-semibold mb-3">Quick Links</h4>
              <ul className="space-y-2 text-sm text-muted-foreground">
                <li>
                  <Link href="/about">About Us</Link>
                </li>
                <li>
                  <Link href="/contact">Contact</Link>
                </li>
                <li>
                  <Link href="/faq">FAQ</Link>
                </li>
              </ul>
            </div>
            <div>
              <h4 className="font-semibold mb-3">Legal</h4>
              <ul className="space-y-2 text-sm text-muted-foreground">
                <li>
                  <Link href="/privacy">Privacy Policy</Link>
                </li>
                <li>
                  <Link href="/terms">Terms of Service</Link>
                </li>
              </ul>
            </div>
            <div>
              <h4 className="font-semibold mb-3">Languages</h4>
              <ul className="space-y-2 text-sm text-muted-foreground">
                <li>English</li>
                <li>हिंदी (Hindi)</li>
                <li>తెలుగు (Telugu)</li>
              </ul>
            </div>
          </div>
          <div className="text-center text-sm text-muted-foreground pt-8 border-t border-border">
            © 2025 TaxSahayak. Supporting Income Tax Department of India.
          </div>
        </div>
      </footer>
    </div>
  )
}
