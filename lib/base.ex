defmodule Pokelixir.Base do

  defmacro __using__(_) do
    quote do
      alias Pokelixir.Endpoint

      def endpoint_url() do
        ""
      end

      def get(id) when is_integer(id), do: get("#{id}")

      def get(id) do
        %HTTPoison.Response{body: body, status_code: status_code} = Endpoint.get! "#{endpoint_url()}#{id}/"
        cond do
          is_map(body) ->
            {status_code, map_to_ability(body)}
          true ->
            {status_code, %__MODULE__{}}
        end
      end

      defp map_to_ability(map) when is_map(map) do
        Map.merge %__MODULE__{}, map
      end

    end
  end
end
