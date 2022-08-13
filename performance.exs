test_data = %{
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

Benchee.run(
  %{
    "lenses" => fn -> DeepMap.lens_transform(test_data) end,
    "recursion" => fn -> DeepMap.recursive_transform(test_data) end,
    "iteraptor" => fn -> DeepMap.iteraptor_transform(test_data) end
  },
  warmup: 0.1,
  time: 0.3,
  memory_time: 0.3,
  unit_scaling: :none,
  formatters: [
    # Benchee.Formatters.HTML,
    Benchee.Formatters.Console,
    {Benchee.Formatters.Markdown,
      file: "performance_results.md",
      description: """
      This benchmark measures some functions to iterate on a complex map structure.
      """
    }
  ]
)
