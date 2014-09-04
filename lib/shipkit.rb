require "shipkit/version"
require "shipkit/configuration"
require "shipkit/fedex"

module Shipkit
  extend self

  def config
    @config || Shipkit::Configuration.new
  end

  def configure
    yield config
  end
end
