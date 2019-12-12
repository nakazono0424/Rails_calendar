class Form::Event < Event
  REGISTRABLE_ATTRIBUTES = %i(register name start_time place)
  attr_accessor :register
end
