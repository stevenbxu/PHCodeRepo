class Dinner
  def initialize(diet)
    @diet = diet
  end
 
  def guests=(guests)
    @guests = guests
  end
 
  def seating_chart_size
    @guests.join.length
  end
 
  def menu
    {
      :diet => @diet,
      :proteins => proteins,
      :veggies => veggies,
      :desserts => desserts
    }
  end
 
  def whats_for_dinner
    str = "Tonight we have "
    [:proteins,:veggies].each do |food|
      items = send(food)
      str += "#{food} "
      items.each_with_index do |item, index|
        item = item.to_s.gsub('_',' ').split(' ').map(&:capitalize).join(' ')
        if items.length - 1 == index
          str += "and #{item}"
        elsif items.length == 2
          str += "#{item} " 
        else
          str += "#{item}, "
        end
      end
 
      str += food == :proteins ? ', and ' : '.'
    end
    str
  end
 
  def whats_for_dessert
    count = desserts.values.collect(&:count).inject(:+)
    str = "Tonight we have #{count} delicious desserts: "
    desserts.each do |type, kinds|
      if type == :molds
        str += "and #{kinds.count} molds: "
        kinds.each_with_index do |k, i|
          str += k.to_s.gsub('_',' ').split(' ').map(&:capitalize).join
          if kinds.length - 1 != i
            str += ' and ' 
          else
            str += '.'
          end
        end
      elsif 
        str += kinds.collect {|k| k.to_s.gsub('_', ' ').split(' ').map(&:capitalize).join(' ')}.join(', ')
        str += ', '
      end
    end
    str
  end
end