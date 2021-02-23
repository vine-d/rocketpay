defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with the given name returns the sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expexted_response = {:ok, %{result: 37}}

      assert response == expexted_response
    end

    test "when there is NO file with the given name returns an error" do
      response = Numbers.sum_from_file("banana")

      expexted_response = {:error, %{message: "Invalid file!"}}

      assert response == expexted_response
    end

  end

end
