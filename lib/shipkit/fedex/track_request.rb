module Shipkit
  module Fedex
    class TrackRequest < Request
      attr_reader :tracking_number, :type, :carrier_code

      def initialize(tracking_number, type: "TRACKING_NUMBER_OR_DOORTAG", carrier_code: "FDXE")
        @tracking_number = tracking_number
        @type = type
        @carrier_code = carrier_code
      end

      def track_request
        doc.TrackRequest {
          doc << web_authentication_detail
          doc << client_detail
          doc.SelectionDetails {
            doc.CarrierCode(carrier_code)
            doc.PackageIdentifier {
              doc.Type(type)
              doc.Value(tracking_number)
            }
          }
        }
      end

      def request
        track_request
      end
    end
  end
end