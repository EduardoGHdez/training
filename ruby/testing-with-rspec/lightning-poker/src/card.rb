# frozen_string_literal: true

class Card
  attr_reader :rank, :suit

  def initialize(suit:, rank:)
    @suit = suit
    @rank = case rank
            when :jack then 10
            when :queen then 11
            when :king then 12
            else rank
            end
  end
end
