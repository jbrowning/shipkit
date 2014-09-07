describe Shipkit::Fedex::Configuration do
  describe "#test" do
    it "defaults to false" do
      expect(subject.test).to eql(false)
    end

    it "retains a new value" do
      subject.test = true
      expect(subject.test).to eql(true)
    end
  end

  describe "account_number" do
    it "defaults to nil" do
      expect(subject.account_number).to be_nil
    end

    it "retains a new value" do
      new_value = "1234"
      subject.account_number = new_value
      expect(subject.account_number).to eql(new_value)
    end
  end

  describe "password" do
    it "defaults to nil" do
      expect(subject.password).to be_nil
    end

    it "retains a new value" do
      new_value = "1234"
      subject.password = new_value
      expect(subject.password).to eql(new_value)
    end
  end

  describe "meter_number" do
    it "defaults to nil" do
      expect(subject.meter_number).to be_nil
    end

    it "retains a new value" do
      new_value = "1234"
      subject.meter_number = new_value
      expect(subject.meter_number).to eql(new_value)
    end
  end

  describe "key" do
    it "defaults to nil" do
      expect(subject.key).to be_nil
    end

    it "retains a new value" do
      new_value = "1234"
      subject.key = new_value
      expect(subject.key).to eql(new_value)
    end
  end
end
