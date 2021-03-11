defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "it should return the total of odd numbers in the provided list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      result = ListFilter.call(list)
      expected_result = 3

      assert result == expected_result
    end

    test "it should return zero if invalid values are provided in the list" do
      list = ["a", "b", "c", "2"]

      result = ListFilter.call(list)
      expected_result = 0

      assert result == expected_result
    end
  end
end
