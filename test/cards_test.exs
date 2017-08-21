defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "creates a deck" do
    assert Cards.create_deck == ["Ace of Spades", "Ace of Clubs",
                                 "Two of Spades", "Two of Clubs",
                                 "Three of Spades", "Three of Clubs"]
  end

  test "shuffles a deck" do
    deck = Cards.create_deck
    Cards.shuffle(deck)
    # TODO: make an assert (i don't know how to do it yet)
  end

  test "checks if a card is in the deck when it is in" do
    deck = Cards.create_deck
    assert Cards.contains?(deck, "Two of Spades") == true
  end

  test "checks if a card is in the deck when it is not in" do
    deck = Cards.create_deck
    assert Cards.contains?(deck, "Five of Spades") == false
  end

  test "saves a deck in your file system" do
    deck = Cards.create_deck
    assert Cards.save(deck, "my_deck") == :ok
  end
end
