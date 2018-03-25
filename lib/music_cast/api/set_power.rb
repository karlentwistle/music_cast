module MusicCast
  class SetPower < API
    def on
      make_request('main/setPower?power=on')
    end

    def standby
      make_request('main/setPower?power=standby')
    end

    def toggle
      make_request('main/setPower?power=toggle')
    end

    def enable_auto_standby
      make_request('system/setAutoPowerStandby?enable=true')
    end

    def disable_auto_standby
      make_request('system/setAutoPowerStandby?enable=false')
    end

    private

    def make_request(path)
      request = Faraday.get("http://#{ip_address}/YamahaExtendedControl/v1/#{path}")
      response_code = JSON.parse(request.body).fetch('response_code')

      if response_code == 0
        request
      else
        throw RequestError, response_code
      end
    end
  end
end
