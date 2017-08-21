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
end
