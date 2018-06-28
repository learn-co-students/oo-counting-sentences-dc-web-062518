require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    x = self.split(/[.?!]/)
    x.each do |y|
      if y.length < 2
        x.delete(y)
      end
    end
    x.count
  end
end
