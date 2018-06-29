require 'pry'

class String

  def sentence?
    if self[-1] == "."
      true
    else
      false
    end
  end

  def question?
    if self[-1] == "?"
      true
    else
      false
    end
  end

  def exclamation?
    if self[-1] == "!"
      true
    else
      false
    end
  end

  # def count_sentences
  #   arr = self.split(" ")
  #   arr.each do |words|
  #     if words[-1] == "!" || words[-1] == "?" || words[-1] == "."
  #
  # end

  def count_sentences
  new_arr = []
    arr = self.split(" ")
    arr.each do |words|
    last = words[-1]
      if last == "!" || last == "?" || last == "."
        new_arr << last
      end
    end
    new_arr.length
  end
end
