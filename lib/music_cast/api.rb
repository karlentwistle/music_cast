require 'faraday'
require 'json'

module MusicCast
  class API
    def configuration
      MusicCast.configuration
    end

    protected

      def ip_address
        configuration.ip_address
      end

      def make_request(path)
        request = Faraday.get("http://#{ip_address}/YamahaExtendedControl/v1/#{path}")
        response_code = JSON.parse(request.body).fetch('response_code')

        if response_code == 0
          request
        else
          raise RequestError, response_code
        end
      end
  end
end

require_relative 'api/get_status'
require_relative 'api/set_mute'
require_relative 'api/set_power'
require_relative 'api/set_volume'
