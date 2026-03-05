# Environment Context - MediUnit

## Project Structure
- **Frontend**: Next.js (App Router), Tailwind CSS, TypeScript.
  - Path: `/Users/naouri/MediUnit/frontend`
  - Deployment: Cloudflare Pages (`mediunit-frontend`)
- **Backend/Worker**: Cloudflare Worker (JavaScript).
  - Path: `/Users/naouri/MediUnit/worker.js`
  - Deployment: Cloudflare Worker (`mediunit-backend`)
- **Database**: Cloudflare D1.

## Key URLs
- **Production Frontend**: `https://mediunit-frontend.pages.dev`
- **Production API**: `https://mediunit-backend.a-naouri.workers.dev/api/v1`

## Current Status
- Favicon and Logo: Integrated and deployed.
- PDF Generation: Fixed in backend and deployed.
- Navigation: BackToTop and mobile search page implemented.
- Accessibility: 100% WCAG audit complete.
