module MusicCast
  class SetPower < API
    def on
      make_request('main/setPower?power=on')
    end

    def standby
      make_request('main/setPower?power=standby')
    end

    alias_method :off, :standby

    def toggle
      make_request('main/setPower?power=toggle')
    end

    def enable_auto_standby
      make_request('system/setAutoPowerStandby?enable=true')
    end

    def disable_auto_standby
      make_request('system/setAutoPowerStandby?enable=false')
    end
  end
end
