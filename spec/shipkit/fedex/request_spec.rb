describe Shipkit::Fedex::Request do
  let(:request) { Shipkit::Fedex::Request.new }

  before(:all) do
    configure_fedex
  end

  describe "#web_authentication_detail" do
    subject { Nokogiri::XML(request.web_authentication_detail) }

    it "adds the key" do
      key = Shipkit::Fedex.config.key
      expect(subject.search("UserCredential > Key").first.content).to eql(key)
    end
    
    it "adds the password" do
      password = Shipkit::Fedex.config.password
      expect(subject.search("UserCredential > Password").first.content).to eql(password)
    end
  end

  describe "#client_detail" do
    subject { Nokogiri::XML(request.client_detail) }

    it "adds the account number" do
      account_number = Shipkit::Fedex.config.account_number
      expect(subject.search("ClientDetail > AccountNumber").first.content).to eql(account_number)
    end
    
    it "adds the meter number" do
      meter_number = Shipkit::Fedex.config.meter_number
      expect(subject.search("ClientDetail > MeterNumber").first.content).to eql(meter_number)
    end
  end
end
