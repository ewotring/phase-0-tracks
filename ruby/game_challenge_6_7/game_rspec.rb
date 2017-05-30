require_relative 'game'

describe Game do
  let(:word) { Game.new("spamtastic") }

  it "stores the word given on initialization" do
    expect(word.get_word).to eq "spamtastic"
  end

  it "converts the input string into an array" do
    expect(word.to_array).to eq ["s", "p", "a", "m", "t", "a", "s", "t", "i", "c"]
  end

  it "creates array of underscores" do
    expect(word.to_underscore).to eq ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_"]
  end

  it "limits the number of guesses to the length of the given word" do
    expect(word.guess_limit).to eq 10
  end

  it "saves guesses in an array" do
    expect(word.guess_array("e")).to eq ["e"]
  end

  it "does not count repeated guesses against user" do
    word.guess_array("e")
    expect(word.guess_count("e")).to eq 0
  end

  it "updates, and prints, the underscore array with the correct letter in the correct place when the user makes a correct guess" do
    word.to_underscore
    expect(word.check_letter("a")).to eq ["_", "_", "a", "_", "_", "a", "_", "_", "_", "_"]
  end

  it "Gives a winning or a losing message" do
    word.to_underscore
    word.check_letter("a")
    expect(word.win_or_lose).to eq "You lose!"
  end
end