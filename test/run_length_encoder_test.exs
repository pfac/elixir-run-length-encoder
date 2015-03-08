defmodule RunLengthEncoderTest do
  use ExUnit.Case

  test "empty string remains the same" do
    assert RunLengthEncoder.encode("") == ""
  end

  test "aaa becomes 3a" do
    assert RunLengthEncoder.encode("aaa") == "a3"
  end

  test "horse becomes h1o1r1s1e1" do
    assert RunLengthEncoder.encode("horse") == "h1o1r1s1e1"
  end

  test "JJJTTWPPMMMMYYYYYYYYYVVVVVV becomes 3J2T1W2P4M9Y6V" do
    assert RunLengthEncoder.encode("JJJTTWPPMMMMYYYYYYYYYVVVVVV") == "J3T2W1P2M4Y9V6"
  end
end
