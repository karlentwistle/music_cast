module MusicCast
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    alias_method :config, :configuration

    def configure
      yield configuration
    end
  end
end

require_relative 'music_cast/configuration'
require_relative 'music_cast/api'
require_relative 'music_cast/errors/request_error'
require_relative 'music_cast/version'
