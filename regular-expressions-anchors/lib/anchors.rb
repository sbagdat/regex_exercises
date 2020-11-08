# Implement the below functions in order.
class Anchors
  # Returns a regex that matches a string that has at least one line that has
  # exactly 1 word in it. It may have other lines that don't match this regex.
  def matching_at_least_one_line_that_has_exactly_one_word_in_it
    /^\w+$/
  end

  # Returns a regex that matches a string that starts with "hello".
  def matching_a_string_starting_with_hello
    /\Ahello/
  end

  # Returns a regex that matches a string that ends with "goodbye".
  def ends_with_goodbye
    /goodbye\z/
  end

  # Returns a regex that matches the word "greeting" exactly. It should not
  # match any other words.
  def matching_greeting_exactly
    /\Agreeting\z/
  end

  # Returns a regex that matches exactly one word.
  def matching_exactly_one_word
    /\A\w+\z/
  end

  # Returns a regex that has the word "and" somewhere in it. This should match
  # "and", but not "demand", for example.
  def matching_the_word_and
    /\band\b/
  end
end
