defmodule DeepMap.Performance do
  def make_test_data(key_num, deep_level) do
    for key_val <- 1..key_num, level <- 1..deep_level, reduce: %{} do
      acc ->
        if level > 1 do
          Map.put(acc, "obj_#{key_val}_level_#{level}", make_test_data(key_num, level - 1))
        else
          Map.put(acc, "key_#{key_val}_id", UUID.uuid1())
        end
    end
  end
end

Benchee.run(
  %{
    "lenses" => fn test_data -> DeepMap.lens_transform(test_data) end,
    "recursion" => fn test_data -> DeepMap.recursive_transform(test_data) end,
    "iteraptor" => fn test_data -> DeepMap.iteraptor_transform(test_data) end
  },
  warmup: 0.1,
  time: 30,
  memory_time: 10,
  parallel: 4,
  unit_scaling: :best,
  inputs: %{
    "Easy" => DeepMap.Performance.make_test_data(20, 1),
    "Medium" => DeepMap.Performance.make_test_data(20, 3),
    "Hard" => DeepMap.Performance.make_test_data(20, 4)
  },
  formatters: [
    Benchee.Formatters.HTML,
    Benchee.Formatters.Console,
    {Benchee.Formatters.Markdown,
      file: "performance_results.md",
      description: """
      This benchmark measures some functions to iterate on a complex map structure.
      """
    }
  ]
)
