module Shipkit
  module Fedex
    class Request
      def doc
        return @doc if defined? @doc
        @doc = Builder::XmlMarkup.new
        @doc.instruct! :xml, version: "1.0"
        @doc
      end

      def web_authentication_detail
        xml = Builder::XmlMarkup.new
        xml.WebAuthenticationDetail {
          xml.UserCredential {
            xml.Key(Fedex.config.key)
            xml.Password(Fedex.config.password)
          }
        }
      end

      def client_detail
        xml = Builder::XmlMarkup.new
        xml.ClientDetail {
          xml.AccountNumber(Fedex.config.account_number)
          xml.MeterNumber(Fedex.config.meter_number)
        }
      end

      def request
        raise NotImplementedError
      end
    end
  end
end