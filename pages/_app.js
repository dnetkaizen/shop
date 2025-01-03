import React from 'react';
import { Toaster } from 'react-hot-toast';
import 'swiper/css/bundle';
import Layout from '../layout/Layout';
import '../styles/globals.scss';
import { StateContext } from '../context/StateContext';
import { SessionProvider } from 'next-auth/react';

function MyApp({ Component, pageProps: { session, ...pageProps } }) {
  return (
    <SessionProvider session={session}>
      <StateContext>
        <Layout>
          <Toaster position="top-right" />
          <Component {...pageProps} />
        </Layout>
      </StateContext>
    </SessionProvider>
  );
}

export default MyApp;
