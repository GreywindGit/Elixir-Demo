defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck creates a deck of 52 cards" do
    deck_size = length(Cards.create_deck)
    assert deck_size == 52
  end

  test "shuffling a deck makes the cards to be in different order" do
    deck = Cards.create_deck
    assert deck != Cards.shuffle(deck)
  end
end
