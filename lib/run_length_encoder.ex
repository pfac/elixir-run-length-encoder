defmodule RunLengthEncoder do

  def encode([]) do
    ""
  end

  def encode([c|s]) do
    encode({ 1, c, s })
  end

  def encode({ n, c, [] }) do
    "#{c}#{n}"
  end

  def encode({ n, c, [c|t] }) do
    encode { n + 1, c, t }
  end

  def encode({ n, c, [h|t] }) do
    encode({ n, c, [] }) <> encode({ 1, h, t })
  end

  def encode(s) do
    encode String.codepoints(s)
  end

end
