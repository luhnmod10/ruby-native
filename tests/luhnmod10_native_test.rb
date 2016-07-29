require "test/unit"
require_relative "../lib/luhnmod10/native"

class Luhnmod10NativeTest < Test::Unit::TestCase
  def test_valid
    tests = [
      ["0", true],
      ["00", true],
      ["18", true],
      ["0000000000000000", true],
      ["4242424242424240", false],
      ["4242424242424241", false],
      ["4242424242424242", true],
      ["4242424242424243", false],
      ["4242424242424244", false],
      ["4242424242424245", false],
      ["4242424242424246", false],
      ["4242424242424247", false],
      ["4242424242424248", false],
      ["4242424242424249", false],
      ["42424242424242426", true],
      ["424242424242424267", true],
      ["4242424242424242675", true],
      ["000000018", true],
      ["99999999999999999999", true],
      ["99999999999999999999999999999999999999999999999999999999999999999997", true],
    ]
    tests.each do |t|
      valid = Luhnmod10::Native.valid?(t[0])
      assert(valid == t[1], "Luhnmod10::Native.valid?(#{t[0]}) == #{valid}, expected #{t[1]}")
    end
  end
end
