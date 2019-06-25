# frozen_string_literal: true

require 'spec_helper'
require 'card'

RSpec.describe Card do
  it 'has a suit' do
    card = Card.new(suit: :spades, rank: 4)
    expect(card.suit).to be :spades
  end

  it 'has a rank' do
    card = Card.new(suit: :spades, rank: 4)
    expect(card.rank).to be 4
  end

  describe 'a jack' do
    it 'has a rank of 10' do
      card = Card.new(suit: :spades, rank: :jack)
      expect(card.rank).to be 10
    end
  end

  describe 'a queen' do
    it 'ranks higher than a jack' do
      queen = Card.new(suit: :spades, rank: :queen)
      jack = Card.new(suit: :spades, rank: :jack)
      expect(queen.rank).to be > jack.rank
    end
  end

  describe 'a king' do
    it 'ranks higher than a queen' do
      queen = Card.new(suit: :spades, rank: :queen)
      king = Card.new(suit: :spades, rank: :king)
      expect(king.rank).to be > queen.rank
    end
  end
end
