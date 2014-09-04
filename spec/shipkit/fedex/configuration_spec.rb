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

  describe "account" do
    it "defaults to nil" do
      expect(subject.account).to be_nil
    end

    it "retains a new value" do
      new_value = "1234"
      subject.account = new_value
      expect(subject.account).to eql(new_value)
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

  describe "meter" do
    it "defaults to nil" do
      expect(subject.meter).to be_nil
    end

    it "retains a new value" do
      new_value = "1234"
      subject.meter = new_value
      expect(subject.meter).to eql(new_value)
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
