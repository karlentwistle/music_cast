require 'faraday'
require 'json'

module MusicCast
  class API
    def configuration
      MusicCast.configuration
    end

    def ip_address
      configuration.ip_address
    end
  end
end

require_relative 'api/set_power'
