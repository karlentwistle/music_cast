module MusicCast
  class SetPower < API
    def on
      make_request('on')
    end

    def standby
      make_request('standby')
    end

    private

    def make_request(power)
      request = Faraday.get("http://#{ip_address}/YamahaExtendedControl/v1/main/setPower?power=#{power}")
      response_code = JSON.parse(request.body).fetch('response_code')

      if response_code == 0
        request
      else
        throw RequestError, response_code
      end
    end
  end
end
