require "./test/test_helper"

class DoctorTest < Minitest::Test
  def test_it_exits
    doctor = Doctor.new("noon")
    assert_instance_of Doctor, doctor
  end

  def test_it_has_readable_thing_attributes
    doctor = Doctor.new("evening")
    assert_respond_to doctor, :thing
  end

  def test_it_raises_error_if_thing_is_invalid
    assert_raises(InvalidDoctorError) { Doctor.new("good ") }
  end

  def test_it_running_hours
    doctor = Doctor.new("noon")
    doctor2 = Doctor.new("evening")
    assert_equal "I'm out of working hours at noon", doctor.shift
    assert_equal "my working hour is over", doctor2.shift
  end
end
