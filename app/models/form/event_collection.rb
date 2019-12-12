class Form::EventCollection < Form::Base
  DEFAULT_ITEM_COUNT = 5
  attr_accessor :events

  def initialize(attributes = {})
    super attributes
    self.events = DEFAULT_ITEM_COUNT.times.map { Form::Event.new } unless events.present?
  end

  def events_attributes=(attributes)
    self.events = attributes.map do |_, event_attributes|
      Form::Event.new(event_attributes).tap { |v| v.availability = false }
    end
  end

  def valid?
    valid_events = target_events.map(&:valid?).all?
    super && valid_events
  end

  def save
    return false unless valid?
    Event.transaction { target_events.each(&:save!) }
    true
  end

  def target_events
    self.events.select { |v| value_to_boolean(v.register) }
  end
end
