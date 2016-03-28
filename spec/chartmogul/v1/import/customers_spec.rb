require 'spec_helper'

RSpec.describe Chartmogul::V1::Import::Customers do

  let(:client) { Chartmogul::Client.new }

  describe '#invoices' do
    subject { client.import.customers.invoices }

    it { expect(subject).to be_a Chartmogul::V1::Import::Invoices }
    it { expect(subject.client).to eq client }
  end

  describe '#create' do
    let(:url) { 'https://api.chartmogul.com/v1/import/customers' }
    let(:query) { { foo: 'bar' } }

    before do
      stub_request(:post, url).with(query: query).to_return(status: 201)
    end

    subject { client.import.customers.create(query) }

    it_should_behave_like 'a base ChartMogul API V1 requests', method: :post
  end

  describe '#list' do
    let(:url) { 'https://api.chartmogul.com/v1/import/customers' }
    let(:query) { { } }

    before do
      stub_request(:get, url).with(query: query).to_return(status: 200)
    end

    subject { client.import.customers.list }

    it_should_behave_like 'a base ChartMogul API V1 requests'
  end
end
