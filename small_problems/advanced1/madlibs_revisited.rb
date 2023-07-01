=begin
  Overview
    - An input from a yml file contains certain containers
      for words that need to replaced with a valid word of
      the right type.
    - An hash can be used to store the replacement words
      where the key is the type of word (adverb, noun etc)
      and the value is an array of words.
=end

REPLACEMENTS_WORDS = { "%{adjective}" => %w(quick lazy sleepy ugly),
  "%{noun}" => %w(fox dog head leg),
  "%{verb}" => %w(jumps lifts bites licks),
  "%{adverb}" => %w(easily lazily noisily excitedly) }

file = File.open('madlibs_revisited_input.txt')
text = file.read

REPLACEMENTS_WORDS.each do |key, value|
  while text.match?(key)
    text.sub!(key, value.sample)
  end
end

puts text
