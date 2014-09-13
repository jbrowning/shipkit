describe Shipkit::Fedex::TrackRequest do
  let(:tracking_number) { rand(1_000_000).to_s }
  let(:request){ Shipkit::Fedex::TrackRequest.new tracking_number }

  before(:all) do
    configure_fedex
  end

  describe "#request" do
    subject { Nokogiri::XML(request.request) }

    it "adds the web authentication details" do
      result = subject.search("/TrackRequest/WebAuthenticationDetail").count
      expect(result).to eq 1
    end

    it "adds the client details" do
      result = subject.search("/TrackRequest/ClientDetail").count
      expect(result).to eq 1
    end

    it "adds the default carrier code" do
      selector = "/TrackRequest/SelectionDetails/CarrierCode"
      result = subject.search(selector).first
      expect(result.text).to eql "FDXE"
    end

    it "adds the default type" do
      selector = "/TrackRequest/SelectionDetails/PackageIdentifier/Type"
      result = subject.search(selector).first
      expect(result.text).to eql "TRACKING_NUMBER_OR_DOORTAG"
    end
    
    it "adds the tracking number" do
      selector = "/TrackRequest/SelectionDetails/PackageIdentifier/Value"
      result = subject.search(selector).first
      expect(result.text).to eql tracking_number
    end
  end
end