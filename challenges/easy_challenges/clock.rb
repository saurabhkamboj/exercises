=begin
  Breakdown
    - Should be able to add & substrsct minutes
      from the `Clock` object.
    - If minutes are added, do not mutate the
      `Clock` object, create a new one.
    - 2 `Clock` objects with the same time are equal.

  Examples
    - A `Clock` class has to be created.
    - The class has an `at` class method.
      - Calling `at` creates a new `Clock` object.
      - It takes 2 integer objects as arguments.
      - One representing hours & other minutes.
    - The class has an instance method `to_s`.
      - It returns a string representation of time
        in the following format => '10:03'
    - The class has a `+` instance method.
      - It takes an integer object as an argument
        that represents minutes.
      - It too returns a new `Clock` object.
    - The class has a `-` instance method.
      - It works similarly to `+`, with the only
        difference being that it substracts.
    - It also has an `==` instance method. It compares
      the hours and minutes of the calling object and
      the object passed in as an argument.
=end

class Clock
  def self.at(hour_input=0, minute_input=0)
    self.new(hour_input, minute_input)
  end

  def +(new_minutes)
    minutes = total_minutes + new_minutes
    (minutes %= 1440) if minutes > 1440

    compute_time(minutes)
  end

  def -(new_minutes)
    minutes = total_minutes - new_minutes
    (minutes %= 1440) if minutes < 0

    compute_time(minutes)
  end

  def to_s
    sprintf('%02d:%02d', hour_hand, minute_hand)
  end

  def ==(other_clock)
    hour_hand == other_clock.hour_hand &&
      minute_hand == other_clock.minute_hand
  end

  protected

  attr_reader :hour_hand, :minute_hand

  private

  def initialize(hour_input, minute_input)
    @hour_hand = hour_input
    @minute_hand = minute_input
  end

  def total_minutes
    (hour_hand * 60) + minute_hand
  end

  def compute_time(minutes)
    hour_input, minute_input = minutes.divmod(60)
    Clock.new(hour_input, minute_input)
  end
end
