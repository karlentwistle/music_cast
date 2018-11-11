require 'spec_helper'

RSpec.describe MusicCast::GetStatus do
  before do
    MusicCast.configure { |c| c.ip_address = '192.168.0.144' }
  end

  subject(:get_status) do
    MusicCast::GetStatus.new
  end

  describe '#to_json' do
    context 'successfully returns device info', :vcr do
      it 'returns json response' do
        expect(get_status.to_json).to eql({
          response_code: 0,
          power: "on",
          volume: 57,
          mute: false,
          max_volume: 100,
          input: "tv",
          distribution_enable: true,
          sound_program: "game",
          clear_voice: false,
          subwoofer_volume: -6,
          link_control: "standard",
          link_audio_delay: "audio_sync",
          disable_flags: 0
        }.to_json)
      end
    end
  end
end
