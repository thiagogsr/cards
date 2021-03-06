defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "creates a deck" do
    assert Cards.create_deck == ["Ace of Spades", "Ace of Clubs",
                                 "Two of Spades", "Two of Clubs",
                                 "Three of Spades", "Three of Clubs"]
  end

  test "checks if a card is in the deck when it is in" do
    deck = Cards.create_deck
    assert Cards.contains?(deck, "Two of Spades") == true
  end

  test "checks if a card is in the deck when it is not in" do
    deck = Cards.create_deck
    assert Cards.contains?(deck, "Five of Spades") == false
  end

  test "gets the first two cards of the deck" do
    deck = Cards.create_deck
    assert Cards.deal(deck, 2) == ["Ace of Spades", "Ace of Clubs"]
  end

  test "saves a deck in your file system" do
    deck = Cards.create_deck
    assert Cards.save(deck, "my_deck") == :ok
  end

  test "loads a deck from your file system when it exists" do
    deck = Cards.create_deck
    Cards.save(deck, "my_deck")
    assert Cards.load("my_deck") == deck
  end

  test "loads a deck from your file system when it does not exist" do
    assert Cards.load("my_deck_two") == "File not found"
  end

  test "creates a shuffled hand with 3 cards" do
    hand = Cards.create_hand(3)
    assert Enum.count(hand) == 3
  end
end
