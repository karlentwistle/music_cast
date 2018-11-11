module MusicCast
  class GetStatus < API
    def to_json
      get.body
    end

    def get
      make_request('main/getStatus')
    end
  end
end
