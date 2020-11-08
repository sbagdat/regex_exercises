require "spec_helper"

describe "matching_at_least_one_line_that_has_exactly_one_word_in_it" do
  it 'matches "one\ntwo words"' do
    expect(Anchors.new.matching_at_least_one_line_that_has_exactly_one_word_in_it).to match("one\ntwo words")
  end

  it "matches 'word'" do
    expect(Anchors.new.matching_at_least_one_line_that_has_exactly_one_word_in_it).to match("word")
  end

  it "does not match 'A1 Sauce'" do
    expect(Anchors.new.matching_at_least_one_line_that_has_exactly_one_word_in_it).not_to match("A1 Sauce")
  end

  it "does not match the empty string" do
    expect(Anchors.new.matching_at_least_one_line_that_has_exactly_one_word_in_it).not_to match("")
  end
end

describe "matching_a_string_starting_with_hello" do
  it "matches 'hello'" do
    expect(Anchors.new.matching_a_string_starting_with_hello).to match "hello"
  end

  it "matches 'hello there'" do
    expect(Anchors.new.matching_a_string_starting_with_hello).to match "hello there"
  end

  it "does not match 'oh hello'" do
    expect(Anchors.new.matching_a_string_starting_with_hello).not_to match "oh hello"
  end

  it "does not match 'hellion'" do
    expect(Anchors.new.matching_a_string_starting_with_hello).not_to match "hellion"
  end

  it 'does not match "oh\nhello"' do
    expect(Anchors.new.matching_a_string_starting_with_hello).not_to match "oh\nhello"
  end
end

describe "ends_with_goodbye" do
  it "matches 'goodbye'" do
    expect(Anchors.new.ends_with_goodbye).to match "goodbye"
  end

  it "matches 'well, goodbye'" do
    expect(Anchors.new.ends_with_goodbye).to match "well, goodbye"
  end

  it "does not match 'goodbye to  you'" do
    expect(Anchors.new.ends_with_goodbye).not_to match "goodbye to you"
  end

  it 'does not match "goodbye\nfor now"' do
    expect(Anchors.new.ends_with_goodbye).not_to match "goodbye\nfor now"
  end
end

describe "matching_greeting_exactly" do
  it "matches 'greeting'" do
    expect(Anchors.new.matching_greeting_exactly).to match "greeting"
  end

  it "does not match 'greetings'" do
    expect(Anchors.new.matching_greeting_exactly).not_to match "greetings"
  end

  it "does not match 'a greeting'" do
    expect(Anchors.new.matching_greeting_exactly).not_to match "a greeting"
  end

  it 'does not match "a\ngreeting"' do
    expect(Anchors.new.matching_greeting_exactly).not_to match "a\ngreeting"
  end
end

describe "matching_exactly_one_word" do
  it "matches 'hello'" do
    expect(Anchors.new.matching_exactly_one_word).to match "hello"
  end

  it "matches 'A1foo_username'" do
    expect(Anchors.new.matching_exactly_one_word).to match "A1foo_username"
  end

  it "does not match 'hello there'" do
    expect(Anchors.new.matching_exactly_one_word).not_to match "hello there"
  end

  it 'does not match "hello\nthere"' do
    expect(Anchors.new.matching_exactly_one_word).not_to match "hello\nthere"
  end
end

describe "matching_the_word_and" do
  it "matches 'and'" do
    expect(Anchors.new.matching_the_word_and).to match "and"
  end

  it "matches 'and'" do
    expect(Anchors.new.matching_the_word_and).to match "one and two"
  end

  it "does not match 'demand'" do
    expect(Anchors.new.matching_the_word_and).not_to match "i demand to see the papers"
  end
  
  it "does not match 'andrew'" do
    expect(Anchors.new.matching_the_word_and).not_to match "hi, i am andrew"
  end
end
