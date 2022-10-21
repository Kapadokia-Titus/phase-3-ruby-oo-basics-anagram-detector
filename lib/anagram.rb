# Your code goes here!
require "pry"
class Anagram
    attr_accessor :word
    attr_accessor :matches

    def initialize word
        @word =word
    end

    def match matches
        data = matches.select do |anagram| 
            sorted = @word.chars.to_a.sort.join.downcase
            anagram.chars.to_a.sort.join.downcase==sorted
        end

    end
end

ang = Anagram.new("aba")
str = ang.match %w[hello world zombies pants dipper aba]