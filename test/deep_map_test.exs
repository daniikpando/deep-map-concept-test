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

  test "should transform with lenses ids values to base62 values" do
    transformed_data = DeepMap.lens_transform(@test_data)

    assert @test_data.id != transformed_data.id
    assert @test_data.api_key_id != transformed_data.api_key_id
    assert @test_data.client.client_id != transformed_data.client.client_id
    assert List.first(@test_data.accounts).id != List.first(transformed_data.accounts).id

    assert List.first(@test_data.accounts).client_id !=
             List.first(transformed_data.accounts).client_id
  end

  test "should transform with recursive ids values to base62 values" do
    transformed_data = DeepMap.recursive_transform(@test_data)

    assert @test_data.id != transformed_data.id
    assert @test_data.api_key_id != transformed_data.api_key_id
    assert @test_data.client.client_id != transformed_data.client.client_id
    assert List.first(@test_data.accounts).id != List.first(transformed_data.accounts).id

    assert List.first(@test_data.accounts).client_id !=
             List.first(transformed_data.accounts).client_id
  end

  test "should transform with iteraptor ids values to base62 values" do
    transformed_data = DeepMap.iteraptor_transform(@test_data)

    assert @test_data.id != transformed_data.id
    assert @test_data.api_key_id != transformed_data.api_key_id
    assert @test_data.client.client_id != transformed_data.client.client_id
    assert List.first(@test_data.accounts).id != List.first(transformed_data.accounts).id

    assert List.first(@test_data.accounts).client_id !=
             List.first(transformed_data.accounts).client_id
  end
end
