defmodule Pokelixir.Endpoint do
  use HTTPoison.Base

  # prepend the url with the server api route
  def process_url(url) do
    "http://pokeapi.co/api/v1" <> url
  end

  # try to decode response bodies as JSON
  #   but reply with the raw body if there are
  #   any errors (e.g., invalid JSON)
  def process_response_body(body) do
    try do
      Poison.decode!(body, keys: :atoms!)
    rescue
      _ -> body
    end
  end

  # always convert the request body to JSON
  def process_request_body(body) do
    Poison.encode!(body)
  end

  # make sure we're posting JSON
  def process_request_headers(headers) do
    [{'content-type', 'application/json'} | headers]
  end

end
