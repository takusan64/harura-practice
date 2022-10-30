import { gql, useQuery } from "urql"

const query = gql`
  query  {
    profiles {
      id
      name
      description
    }
  }
`

export default function Home() {
  const [result] = useQuery({
    query: query,
  });
  const { data, fetching, error } = result;

  if (fetching) return <div>Loading...</div>;
  if (error) return <div>{error.message}</div>;
  console.log(data.profiles);
  return (
    <div>Hello World</div>
  )
}
