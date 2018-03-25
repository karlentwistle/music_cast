require 'spec_helper'

RSpec.describe MusicCast::SetPower do
  before do
    MusicCast.configure { |c| c.ip_address = '192.168.0.144' }
  end

  subject(:set_power) do
    MusicCast::SetPower.new
  end

  describe '#on' do
    context 'successfully turns the speaker on', :vcr do
      it 'returns faraday response' do
        expect(set_power.on).to be_a(Faraday::Response)
      end
    end
  end

  describe '#standby' do
    context 'successfully turns the speaker to standby (off)', :vcr do
      it 'returns faraday response' do
        expect(set_power.standby).to be_a(Faraday::Response)
      end
    end
  end

  describe '#off' do
    it 'is an alias of standby' do
      off = set_power.method(:off)
      standby = set_power.method(:standby)
      expect(off).to eql(standby)
    end
  end

  describe '#toggle' do
    context 'successfully toggles the speaker power state', :vcr do
      it 'returns faraday response' do
        expect(set_power.toggle).to be_a(Faraday::Response)
      end
    end
  end

  describe '#enable_auto_standby' do
    context 'successfully enables auto standby', :vcr do
      it 'returns faraday response' do
        expect(set_power.enable_auto_standby).to be_a(Faraday::Response)
      end
    end
  end

  describe '#disable_auto_standby' do
    context 'successfully disables auto standby', :vcr do
      it 'returns faraday response' do
        expect(set_power.disable_auto_standby).to be_a(Faraday::Response)
      end
    end
  end
end
