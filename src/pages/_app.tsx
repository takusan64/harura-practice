import type { AppProps } from 'next/app'
import { Provider } from 'urql';
import { urqlClient } from '@/libs/urqlClient';

export default function App({ Component, pageProps }: AppProps) {
  return(
    <Provider value={urqlClient}>
      <Component {...pageProps} />
    </Provider>
  )
}
