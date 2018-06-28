require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
  self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    array = []
    backup = []
    self.split('.').each do |arr|
      arr.split('!').each do |arr2|
        array << arr2.split('?')
        backup << array.flatten
      end
    end
    backup.count
   
    
  end
end