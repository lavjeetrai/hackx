/** @type {import('next').NextConfig} */
const nextConfig = {
  typescript: {
    ignoreBuildErrors: true,
  },
  images: {
    unoptimized: true,
  },
  experimental: {
    turbo: {
      resolveAlias: {
        '@/lib/supabase/server': './lib/supabase/server.ts',
        '@/lib/supabase/client': './lib/supabase/client.ts',
      },
    },
  },
}

export default nextConfig
