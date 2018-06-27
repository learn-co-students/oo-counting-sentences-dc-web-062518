require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    var = self.split("")
    counter = 0
    new_array = []
    var.each_with_index do |character, index|
      if character == (".") && var[index-1] != character
        counter += 1
      elsif character == ("?") && var[index-1] != character
        counter += 1
      elsif character == ("!") && var[index-1] != character
        counter += 1
      end
    end
    counter
  end
end
