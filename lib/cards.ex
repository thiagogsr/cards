defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  Create a deck (list of cards).

  ## Examples

      iex> Cards.create_deck
      ["Ace", "Two", "Three"]

  """
  def create_deck do
    ["Ace", "Two", "Three"]
  end

  @doc """
  Shuffles a deck.

  ## TODO: Examples (i don't know how to do yet)
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
  Checks if card is present in the deck.

  ## Examples

      iex> deck = Cards.create_deck
      ["Ace", "Two", "Three"]
      iex> Cards.contains?(deck, "Two")
      true
      iex> Cards.contains?(deck, "Four")
      false

  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
