ExUnit.start

defmodule SomeTest do
  use ExUnit.Case

  test 'testing assert' do
    assert 1 + 1 == 2
  end

  test 'testing refute' do
    refute 1 + 1 == 3
  end

  test :assert_raise do
    assert_raise ArithmeticError, fn ->
      1 + "x"
    end
  end

  test 'assert delta for diffing' do
    assert_in_delta 1, 5 ,6
  end
end
