require "shipkit/fedex/configuration"

module Shipkit
  module Fedex
    extend self

    def config
      @config ||= Shipkit::Fedex::Configuration.new
    end

    def configure
      yield config
    end
  end
end
