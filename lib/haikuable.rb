require 'syllabize'

module Haikuable
  class Checker

    attr_accessor :string, :line_counts
    HAIKU_SYLLABLE_COUNT = 17

    def initialize(string)
      @string      = string
      @line_counts = { line1: 0, line2: 0, line3: 0 }
    end

    def is_haiku?
      return false unless string_syllable_count == haiku_syllable_count
      individual_syllables.each do |syl_count|
        line_counts.each do |key, count|
          if line_counts[key] < haiku_lines[key]
            line_counts[key] += syl_count
          end
        end
      end
      line_counts == haiku_lines
    end

    private

    def haiku_lines
      { line1: 5, line2: 7, line3: 5 }
    end

    def haiku_syllable_count
      HAIKU_SYLLABLE_COUNT
    end

    def string_syllable_count
      individual_syllables.reduce(:+)
    end

    def individual_syllables
      string.split(' ').map {|word| Syllabize::Counter.new(word).count_syllables }
    end

  end
end
