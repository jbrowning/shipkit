require "shipkit/fedex/configuration"
require "shipkit/fedex/request"

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
