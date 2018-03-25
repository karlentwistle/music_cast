require 'spec_helper'

RSpec.describe MusicCast::Configuration do
  subject(:configuration) { described_class.new }

  it 'allows configuration of ip_address' do
    configuration.ip_address = '192.168.0.1'
    expect(configuration.ip_address).to eql('192.168.0.1')
  end
end
