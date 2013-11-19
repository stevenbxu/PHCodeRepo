
class EvenNumber

	include Comparable
	
    attr_accessor :value

    def initialize(value)
                @value = value
    end 

    def increment(value)
        new_val = nil
            if @value.odd?
                new_val =EvenNumber.new(@value + 1)
            else
                new_val =EvenNumber.new(@value + 2)
            end
        new_val
    end

    def <=> (other)
        @value <=> other.value
    end

end


