class InvalidDoctorError < StandardError
end

class Doctor
  attr_reader :thing
  VALID_CHOICES = %w[noon evening].freeze

  def initialize(thing)
    @thing = validate(thing)
  end

  def validate(thing)
    return thing if VALID_CHOICES.include?(thing)

    raise InvalidDoctorError
  end

  def shift
    if @thing == "noon"
      "I'm out of working hours at noon"
    elsif @thing == "evening"
      "my working hour is over"
    end
  end
end
