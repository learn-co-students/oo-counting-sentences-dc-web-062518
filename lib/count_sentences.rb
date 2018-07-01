require 'pry'

class String

  def sentence?
     self.end_with?('.')
  end

  def question?
   self.end_with?("?")
  end

  def exclamation?
     self.end_with?("!")
  end

  def count_sentences
      count = 0
      self.split.each do |word|
        word.chars.each do |char|
          if char.exclamation? || char.sentence? || char.question?
            count += 1
            break
          end
        end
      end
    count
  end
end
