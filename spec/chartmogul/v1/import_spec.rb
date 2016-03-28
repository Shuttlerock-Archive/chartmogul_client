require 'spec_helper'

RSpec.describe Chartmogul::V1::Import do

  let(:client) { Chartmogul::Client.new }

  describe '#customers' do
    subject { client.import.customers }

    it { expect(subject).to be_a Chartmogul::V1::Import::Customers }
    it { expect(subject.client).to eq client }
  end

end
