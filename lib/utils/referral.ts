export function generateReferralCode(): string {
  const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  let code = ""
  for (let i = 0; i < 8; i++) {
    code += chars.charAt(Math.floor(Math.random() * chars.length))
  }
  return code
}

export function calculatePoints(amount: number): number {
  // Award 1 point for every ₹10 spent
  return Math.floor(amount / 10)
}

export function pointsToRupees(points: number): number {
  // 100 points = ₹1
  return points / 100
}
