'use client';

import React, { ReactNode } from 'react';
import { withLDProvider } from 'launchdarkly-react-client-sdk';

const LD_CLIENT_SIDE_ID = process.env.NEXT_PUBLIC_LD_CLIENT_SIDE_ID || '';

interface LaunchDarklyProviderProps {
  children: ReactNode;
}

const LaunchDarklyProvider = ({ children }: { children?: React.ReactNode }) => {
  return <>{children}</>;
};

const WrappedProvider = withLDProvider({
  clientSideID: LD_CLIENT_SIDE_ID,
  user: {
    key: 'anonymous',
    anonymous: true,
  },
  options: {
    bootstrap: 'localStorage',
  },
})(LaunchDarklyProvider);

export default WrappedProvider as React.ComponentType<{ children: React.ReactNode }>;

