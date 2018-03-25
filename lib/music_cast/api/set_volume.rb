module MusicCast
  class SetVolume < API
    def to(value)
      unless (0..100).include?(value.to_i)
        raise RequestError, "value #{value} out of bounds 0..100"
      end

      make_request("main/setVolume?volume=#{value.to_i}")
    end

    def increment(step=nil)
      if step
        make_request("main/setVolume?volume=up&step=#{step.to_i}")
      else
        make_request('main/setVolume?volume=up')
      end
    end

    def decrement(step=nil)
      if step
        make_request("main/setVolume?volume=down&step=#{step.to_i}")
      else
        make_request('main/setVolume?volume=down')
      end
    end
  end
end
