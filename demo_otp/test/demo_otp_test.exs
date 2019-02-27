defmodule DemoOtpTest do
  use ExUnit.Case
  doctest DemoOtp

  test "greets the world" do
    assert DemoOtp.hello() == :world
  end
end
