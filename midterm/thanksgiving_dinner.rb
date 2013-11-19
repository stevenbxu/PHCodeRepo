require "./dinner.rb"

class ThanksgivingDinner < Dinner

  def proteins
    if @diet == :vegan
      ["Tofurkey", "Hummus"]
    else
      ["Turkey"]
    end
  end
 
  def veggies
    [:ginger_carrots , :potatoes, :yams]
  end
 
  def desserts
    {:pies => [:pumkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]}
  end

end
