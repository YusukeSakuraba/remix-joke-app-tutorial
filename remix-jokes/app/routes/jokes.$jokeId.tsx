import { useParams } from "@remix-run/react";

export default function JokeRoute() {
  return (
    <div>
      <p>Here's your hilarious joke:</p>
      <p>
        Why don't you find hippopotamuses hiding in trees? They're really good
        at it.
      </p>
    </div>
  );
}

export function ErrorBoundary() {
  const { jokeId } = useParams();
  return (
    <div className="error-container">
      There was an error loading joke by the id "${jokeId}". Sorry.
    </div>
  );
}
