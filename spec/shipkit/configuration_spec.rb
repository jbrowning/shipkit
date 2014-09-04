describe Shipkit::Configuration do
  describe "#fedex" do
    it "returns Shipkit::Fedex.config" do
      expect(subject.fedex).to eql(Shipkit::Fedex.config)
    end
  end
end
