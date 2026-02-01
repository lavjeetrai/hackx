"use client"

import { Button } from "@/components/ui/button"

export function CopyButton({ text, referralCode }: { text: string; referralCode: string }) {
  return (
    <Button
      variant="outline"
      onClick={() => {
        navigator.clipboard.writeText(text)
      }}
    >
      Copy Link
    </Button>
  )
}
