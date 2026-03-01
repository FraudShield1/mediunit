const withBundleAnalyzer = require('@next/bundle-analyzer')({
  enabled: process.env.ANALYZE === 'true',
})

/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'export',
  images: {
    unoptimized: true
  },

  eslint: {
    ignoreDuringBuilds: true,
  }
}

module.exports = withBundleAnalyzer(nextConfig)
