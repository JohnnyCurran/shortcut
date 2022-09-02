defmodule Shortcut do
  @moduledoc """
  Documentation for `Shortcut`.
  """

  defp post(endpoint, body) do
    HTTPoison.post("#{@api_url}/#{endpoint}", Jason.encode!(body), @headers)
    |> normalize_response()
  end

  defp get(endpoint) do
    HTTPoison.get("#{@api_url}/#{endpoint}", @headers)
    |> normalize_response()
  end

  defp put(endpoint, body) do
    HTTPoison.put("#{@api_url}/#{endpoint}", Jason.encode!(body), @headers)
    |> normalize_response()
  end

  defp normalize_response({:ok, %{body: body}}), do: body
  defp normalize_response({:error, error}), do: error
end
