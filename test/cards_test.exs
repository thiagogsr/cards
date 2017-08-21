defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "creates a deck" do
    assert Cards.create_deck() == [:ace, :two, :three]
  end

  test "shuffles a deck" do
    deck = Cards.create_deck()
    Cards.shuffle(deck)
    # TODO: make an assert (i don't know how to do yet)
  end
end
