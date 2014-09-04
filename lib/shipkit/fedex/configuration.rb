module Shipkit
  module Fedex
    class Configuration
      attr_accessor :account, :password, :meter, :key, :test

      def initialize
        self.test = false
      end
    end
  end
end