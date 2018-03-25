require 'spec_helper'

RSpec.describe MusicCast::SetVolume do
  before do
    MusicCast.configure { |c| c.ip_address = '192.168.0.144' }
  end

  subject(:set_volume) do
    MusicCast::SetVolume.new
  end

  describe '#to' do
    context 'successfully sets the speaker direct volume', :vcr do
      it 'returns faraday response' do
        expect(set_volume.to(11)).to be_a(Faraday::Response)
      end
    end

    context 'unsuccessfully sets the speaker direct volume' do
      context 'out of range upper bound' do
        it 'raises RequestError' do
          expect do
            set_volume.to(101)
          end.to raise_error(MusicCast::RequestError, "value 101 out of bounds 0..100")
        end
      end

      context 'out of range lower bound' do
        it 'raises RequestError' do
          expect do
            set_volume.to(-1)
          end.to raise_error(MusicCast::RequestError, "value -1 out of bounds 0..100")
        end
      end
    end
  end
end


