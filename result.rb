require "./lib/doctor"

class InvalidResultError < StandardError
end

class Result < Doctor
  attr_reader :thing

  def initialize(thing)
    super(thing)
  rescue InvalidDoctorError
    raise InvalidResultError
  end

  def both_result
    case
    when "immediately to the emergency" then nurse.health
    when "I'm out of working hours at noon" then doctor.shift
    end
  end
end
