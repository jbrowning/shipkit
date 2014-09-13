module FedexHelpers
  def configure_fedex(options={})
    Shipkit::Fedex.configure do |config|
      config.key = random_credential
      config.password = random_credential
      config.account_number = random_credential
      config.meter_number = random_credential
    end
  end
end