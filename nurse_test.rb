require "./test/test_helper"

class NurseTest < Minitest::Test
  def test_it_exits
    nurse = Nurse.new("patient")
    assert_instance_of Nurse, nurse
  end

  def test_it_has_readable_thing_attributes
    nurse = Nurse.new("dead")
    assert_respond_to nurse, :thing
  end

  def test_it_raises_error_if_thing_is_invalid
    assert_raises(InvalidNurseError) { Nurse.new("bad") }
  end

  def test_it_your_health
    nurse = Nurse.new("patient")
    nurse2 = Nurse.new("dead")
    assert_equal "immediately to the emergency", nurse.health
    assert_equal "take it to the morgue", nurse2.health
  end
end
