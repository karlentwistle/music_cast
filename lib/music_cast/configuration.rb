module MusicCast
  class Configuration
    PROPERTIES = [
      :ip_address,
    ]

    def property_names
      PROPERTIES
    end

    attr_accessor(*PROPERTIES)
  end
end
