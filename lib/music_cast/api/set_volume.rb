module MusicCast
  class SetVolume < API
    def to(value)
      if (0..100).include?(value)
        make_request("main/setVolume?volume=#{value.to_i}")
      else
        raise RequestError, "value #{value} out of bounds 0..100"
      end
    end
  end
end
