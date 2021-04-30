class InvalidNurseError < StandardError
end

class Nurse
  attr_reader :name, :thing
  VALID_CHOICES = %w[patient dead].freeze

  def initialize(thing)
    @thing = validate(thing)
  end

  def validate(thing)
    return thing if VALID_CHOICES.include?(thing)
    raise InvalidNurseError
  end

  def health
    if @thing == "patient"
      "immediately to the emergency"
    elsif @thing == "dead"
      "take it to the morgue"
    end
  end
end
