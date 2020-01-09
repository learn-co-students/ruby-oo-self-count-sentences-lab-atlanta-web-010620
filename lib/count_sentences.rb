require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true 
    else 
      return false 
    end

  end

  def question?
    if self.end_with?("?")
      return true 
    else 
      return false 
    end
    
  end

  def exclamation?
    if self.end_with?("!")
      return true 
    else 
      return false 
    end
    
  end

  def count_sentences
    # remove all ! . ? and return an array of the split strings 
    num_sentences = self.split(/[!.?]/)
    # remove all blanks and nil values 
    num_sentences.delete_if {|val| val==nil || val== ''}
    return num_sentences.length

  end

end