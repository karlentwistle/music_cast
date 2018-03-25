require 'spec_helper'

RSpec.describe MusicCast do
  it 'has a version number' do
    expect(MusicCast::VERSION).not_to be nil
  end

  describe '#configure' do
    it 'yields configure' do
      yielded = nil
      MusicCast.configure do |config|
        yielded = config
      end
      expect(yielded).to be_a(MusicCast::Configuration)
    end
  end
end
