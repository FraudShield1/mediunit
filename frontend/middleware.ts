import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';

export function middleware(request: NextRequest) {
    const { pathname } = request.nextUrl;

    // Protected routes
    const protectedRoutes = ['/dashboard', '/admin'];
    // Checkout is accessible without login; auth is checked client-side
    const isProtectedRoute = protectedRoutes.some(route => pathname.startsWith(route));

    if (!isProtectedRoute) return NextResponse.next();

    // Check for auth token in both cookie (httpOnly login flow) and
    // the Authorization header (SPA flow where token is in localStorage)
    const cookieToken = request.cookies.get('mediunit_token')?.value;

    // For static export (no SSR), we can't reliably check localStorage in middleware.
    // We use a short-lived cookie set on successful login as the signal.
    // If no cookie, redirect to login with return URL preserved.
    if (!cookieToken) {
        const loginUrl = new URL('/login', request.url);
        loginUrl.searchParams.set('from', pathname);
        return NextResponse.redirect(loginUrl);
    }

    return NextResponse.next();
}

export const config = {
    matcher: ['/dashboard/:path*', '/admin/:path*'],
};
