module Shipkit
  module Fedex
    class Configuration
      attr_accessor :account_number, :password, :meter_number, :key, :test

      def initialize
        self.test = false
      end
    end
  end
end