defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  Create a deck (list of cards).

  ## Examples

      iex> Cards.create_deck
      ["Ace of Spades", "Ace of Clubs", "Two of Spades", "Two of Clubs",
       "Three of Spades", "Three of Clubs"]

  """
  def create_deck do
    values = ["Ace", "Two", "Three"]
    suits = ["Spades", "Clubs"]

    for value <- values, suit <- suits do
      "#{value} of #{suit}"
    end
  end

  @doc """
  Shuffles a deck.

  ## TODO: Examples (i don't know how to do it yet)
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
  Checks if card is present in the deck.

  ## Examples

      iex> deck = Cards.create_deck
      ["Ace of Spades", "Ace of Clubs", "Two of Spades", "Two of Clubs",
       "Three of Spades", "Three of Clubs"]
      iex> Cards.contains?(deck, "Two of Spades")
      true
      iex> Cards.contains?(deck, "Four of Clubs")
      false

  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
