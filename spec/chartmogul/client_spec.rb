require 'spec_helper'

RSpec.describe Chartmogul::Client do

  let(:client) { Chartmogul::Client.new }

  describe '#import' do
    subject { client.import }

    it { expect(subject).to be_a Chartmogul::V1::Import }
    it { expect(subject.client).to eq client }
  end

  describe '#customers' do
    subject { client.customers }

    it { expect(subject).to be_a Chartmogul::V1::Customers }
    it { expect(subject.client).to eq client }
  end

  describe '#userpwd' do
    let(:client) { Chartmogul::Client.new(account_token: 'foo', secret_key: 'bar') }

    it { expect(client.userpwd).to eq 'foo:bar' }
  end
end
