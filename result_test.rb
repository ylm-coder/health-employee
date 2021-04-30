require "./test/test_helper"

class ResultTest < Minitest::Test
  def test_it_exits
    result = Result.new("noon")
    assert_instance_of Result, result
  end

  def test_it_raises_error_if_thing_is_invalid
    assert_raises(InvalidResultError) { Result.new("ov") }
  end

  def test_it_compare_both_status
    result = Result.new("noon")
    assert_respond_to result, :thing
  end
end
