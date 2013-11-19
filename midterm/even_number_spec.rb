require "#{File.dirname(__FILE__)}/EvenNumber"

describe EvenNumber do
  
  before do
    @evennumber = EvenNumber.new
  end

  describe "#filter" do
    it "only allows even numbers" do
      @evennumber.filter([1,2,3,4,5,6]).should == [2,4,6]
    end
  end
  
  describe "#increment" do
  	it "gets the next even number" do
		@evennumber.increment(2).should eq 4
	 end
  end
  
  describe "#compare" do
    it "yields the greater of the two even numbers" do
    	@evennumber.compare(2,4).should eq 4
    end
  end

  describe "#range" do
    it "generates a range of even numbers" do
      @evennumber.range(1,5).should eq 1..5
    end
  end


end
