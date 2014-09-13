require "shipkit/fedex/configuration"
require "shipkit/fedex/request"
require "shipkit/fedex/track_request"

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
