require "./animal.rb"

class Turkey < Animal

  def gobble_speak(speak)
    gobbles = []
    
    speak.split(' ').each do |w|

      if w.match /'/
        gobble = "gobb'le"
      else
        gobble = "gobble"
      end
 
      if w.match /\./
        gobble += '.'
      end
 
      gobble = w.capitalize == w ? gobble.capitalize : gobble
      gobbles << gobble
    end
    gobbles.join(' ')
    
  end

end