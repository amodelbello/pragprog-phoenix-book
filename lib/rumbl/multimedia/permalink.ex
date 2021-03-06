defmodule Rumbl.Multimedia.Permalink do
  @behaviour Ecto.Type

  def type, do: :id

  def cast(value) when is_binary(value) do
    case Integer.parse(value) do
      {int, _} when int > 0 ->
        {:ok, int}

      _ ->
        :error
    end
  end

  def cast(integer) when is_integer(integer) do
    {:ok, integer}
  end

  def cast(_) do
    :error
  end

  def dump(integer) when is_integer(integer) do
    {:ok, integer}
  end

  def load(integer) when is_integer(integer) do
    {:ok, integer}
  end

  def embed_as(format) do
    format
  end

  def equal?(term1, term2) do
    term1 == term2
  end
end
