defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  Create a deck (list of cards).

  ## Examples

      iex> Cards.create_deck
      [:ace, :two, :three]

  """
  def create_deck do
    [:ace, :two, :three]
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
      [:ace, :two, :three]
      iex> Cards.contains?(deck, :two)
      true
      iex> Cards.contains?(deck, :four)
      false

  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
