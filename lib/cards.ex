defmodule Cards do
  @moduledoc """
  Creates a deck and manipulates cards.
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

  @doc """
  Gets the first `hand_size` cards of the deck.

  ## Examples

      iex> deck = Cards.create_deck
      ["Ace of Spades", "Ace of Clubs", "Two of Spades", "Two of Clubs",
       "Three of Spades", "Three of Clubs"]
      iex> Cards.deal(deck, 2)
      ["Ace of Spades", "Ace of Clubs"]

  """
  def deal(deck, hand_size) do
    { hand, _rest_of_deck } = Enum.split(deck, hand_size)
    hand
  end

  @doc """
  Saves a deck in your file system.

  ## Examples

      iex> deck = Cards.create_deck
      ["Ace of Spades", "Ace of Clubs", "Two of Spades", "Two of Clubs",
       "Three of Spades", "Three of Clubs"]
      iex> Cards.save(deck, "my_deck")
      :ok

  """
  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  @doc """
  Load a deck from your file system.

  ## Examples

      iex> deck = Cards.create_deck
      ["Ace of Spades", "Ace of Clubs", "Two of Spades", "Two of Clubs",
       "Three of Spades", "Three of Clubs"]
      iex> Cards.save(deck, "my_deck")
      :ok
      iex> Cards.load("my_deck")
      ["Ace of Spades", "Ace of Clubs", "Two of Spades", "Two of Clubs",
       "Three of Spades", "Three of Clubs"]
      iex> Cards.load("my_deck_two")
      "File not found"

  """
  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, _reason} -> "File not found"
    end
  end

  @doc """
  Creates a shuffled deck with `hand_size` cards
  """
  def create_hand(hand_size) do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end
end
