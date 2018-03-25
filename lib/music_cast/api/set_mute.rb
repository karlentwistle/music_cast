module MusicCast
  class SetMute < API
    def on
      make_request('main/setMute?enable=true')
    end

    def off
      make_request('main/setMute?enable=false')
    end
  end
end
