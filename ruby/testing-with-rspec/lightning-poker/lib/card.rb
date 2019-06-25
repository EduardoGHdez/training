# frozen_string_literal: true

class Card
  attr_reader :rank, :suit

  private_class_method :new

  def initialize(suit:, rank:)
    @suit = suit
    @rank = case rank
            when :jack then 10
            when :queen then 11
            when :king then 12
            else rank
            end
  end

  def self.build(suit:, rank:)
    new(suit: suit, rank: rank)
  end

  def ==(other)
    rank == other.rank && suit == other.suit
  end

  def hash
    [rank, suit].hash
  end

  def eql?(other)
    self == other
  end
end
