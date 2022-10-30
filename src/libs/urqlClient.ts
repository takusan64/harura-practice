import { createClient } from 'urql';

export const urqlClient = createClient({
  url: 'http://localhost:8080/v1/graphql',
  fetchOptions: {
      headers: {
        'content-type': 'application/json',
      },
  },
});