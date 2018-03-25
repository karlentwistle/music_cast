require 'spec_helper'

RSpec.describe MusicCast::SetMute do
  before do
    MusicCast.configure { |c| c.ip_address = '192.168.0.144' }
  end

  subject(:set_mute) do
    MusicCast::SetMute.new
  end

  describe '#on' do
    context 'successfully mutes the speaker', :vcr do
      it 'returns faraday response' do
        expect(set_mute.on).to be_a(Faraday::Response)
      end
    end
  end

  describe '#off' do
    context 'successfully unmutes the speaker', :vcr do
      it 'returns faraday response' do
        expect(set_mute.off).to be_a(Faraday::Response)
      end
    end
  end
end
