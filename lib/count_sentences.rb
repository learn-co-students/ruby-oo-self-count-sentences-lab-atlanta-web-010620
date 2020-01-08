require 'pry'

class String
  def ends_with?(ending)
    if self[-1] == ending
      return true
    else
      return false
    end
  end

  def sentence?
    self.ends_with?(".")
  end

  def question?
    self.ends_with?("?")
  end

  def exclamation?
    self.ends_with?("!")
  end

  def count_sentences
    result = self.split(/[.?!]/)
    result = result.reject { |s| s.empty?}
    answer = result.count
  end
end