describe Shipkit::Fedex::Request do
  let(:request) { Shipkit::Fedex::Request.new }

  before(:all) do
    configure_fedex
  end

  describe "#web_authentication_detail" do
    subject { Nokogiri::XML(request.web_authentication_detail) }

    it "adds the key" do
      key = Shipkit::Fedex.config.key
      selector = "/WebAuthenticationDetail/UserCredential/Key"
      expect(subject.search(selector).first.text).to eql(key)
    end
    
    it "adds the password" do
      password = Shipkit::Fedex.config.password
      selector = "/WebAuthenticationDetail/UserCredential/Password"
      expect(subject.search(selector).first.text).to eql(password)
    end
  end

  describe "#client_detail" do
    subject { Nokogiri::XML(request.client_detail) }

    it "adds the account number" do
      account_number = Shipkit::Fedex.config.account_number
      selector = "/ClientDetail/AccountNumber"
      expect(subject.search(selector).first.text).to eql(account_number)
    end
    
    it "adds the meter number" do
      meter_number = Shipkit::Fedex.config.meter_number
      selector = "/ClientDetail/MeterNumber"
      expect(subject.search(selector).first.text).to eql(meter_number)
    end
  end
end
