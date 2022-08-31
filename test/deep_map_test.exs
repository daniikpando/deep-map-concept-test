defmodule DeepMapTest do
  use ExUnit.Case, async: true

  @test_data %{
    id: UUID.uuid1(),
    api_key_id: UUID.uuid1(),
    client: %{
      client_id: UUID.uuid1()
    },
    accounts: [
      %{
        id: UUID.uuid1(),
        client_id: UUID.uuid1()
      }
    ]
  }

  for {function_name, function} <- [
        {:lens, &DeepMap.lens_transform/1},
        {:recursive, &DeepMap.recursive_transform/1},
        {:iteraptor, &DeepMap.iteraptor_transform/1},
        {:async, &DeepMap.async_transform/1}
      ] do
    test "should transform with #{function_name} to convert UUID values to Base62UUID" do
      function = unquote(function)
      # function_name = unquote(function_name)

      transformed_data = function.(@test_data)

      assert @test_data.id != transformed_data.id
      assert @test_data.api_key_id != transformed_data.api_key_id
      assert @test_data.client.client_id != transformed_data.client.client_id
      assert List.first(@test_data.accounts).id != List.first(transformed_data.accounts).id

      assert List.first(@test_data.accounts).client_id !=
               List.first(transformed_data.accounts).client_id
    end
  end
end
