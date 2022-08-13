defmodule DeepMap do
  @moduledoc """
  Documentation for `DeepMap`.
  """

  def lens_transform(data) do
    Lens.all()
    |> Lens.into(%{})
    |> Lens.map(data, fn
      {k, v} when is_binary(v) ->
        nv = convert_uuids_to_base62(k, v)
        {k, nv}

      {k, [_ | _] = v} ->
        {k, Enum.map(v, fn x -> lens_transform(x) end)}

      {k, %{} = v} ->
        {k, lens_transform(v)}

      {k, v} ->
        {k, v}
    end)
  end

  def recursive_transform(%{} = data) do
    data
    |> Enum.to_list()
    |> recursive_transform()
    |> Enum.into(%{})
  end

  def recursive_transform([]), do: []

  def recursive_transform([{k, v} | tail]) when is_binary(v) do
    nv = convert_uuids_to_base62(k, v)
    [{k, nv} | recursive_transform(tail)]
  end

  def recursive_transform([{k, v} | tail]) when is_map(v) do
    v = recursive_transform(v)

    [{k, v} | recursive_transform(tail)]
  end

  def recursive_transform([{k, v} | tail]) when is_list(v) do
    v = Enum.map(v, fn elm -> recursive_transform(elm) end)
    [{k, v} | recursive_transform(tail)]
  end

  def iteraptor_transform(data) do
    Iteraptor.map(
      data,
      fn
        {path, value} when is_binary(value) ->
          k = List.last(path)

          new_value = convert_uuids_to_base62(k, value)

          {path, new_value}

        {_path, _value} = self ->
          self
      end,
      yield: :all
    )
  end

  def convert_uuids_to_base62(key, value) when is_binary(value) do
    str_key = to_string(key)

    # Checks if value is an id with the key,
    # The rule is key should be named "id" or contain a suffix "_id".

    if Regex.match?(~r/(^id$)|(\_id$)/, str_key) do
      Base62UUID.encode!(value)
    else
      value
    end
  end

  def convert_uuids_to_base62(_key, value), do: value
end
