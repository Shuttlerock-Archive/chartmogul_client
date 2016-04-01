require 'spec_helper'

RSpec.describe Chartmogul::V1::Import::Subscriptions do

  let(:client) { Chartmogul::Client.new }

  describe '#cancel' do
    let(:url) { 'https://api.chartmogul.com/v1/import/subscriptions/uuid' }
    let(:cancelled_at) { Time.now }
    let(:body)         { { cancelled_at: cancelled_at.iso8601 } }
    let(:query)        { {} }

    before do
      stub_request(:put, url).with(body: body.to_json).to_return(status: 200)
    end

    subject { client.import.subscriptions.cancel('uuid', cancelled_at) }

    it_should_behave_like 'a base ChartMogul API V1 requests', method: :put
  end

  describe '#list' do
    let(:url) { 'https://api.chartmogul.com/v1/import/customers/uuid/subscriptions' }
    let(:query) { { } }

    before do
      stub_request(:get, url).with(query: query).to_return(status: 200)
    end

    subject { client.import.subscriptions.list('uuid') }

    it_should_behave_like 'a base ChartMogul API V1 requests'
  end

end
