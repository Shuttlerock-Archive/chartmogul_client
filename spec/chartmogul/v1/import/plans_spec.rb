require 'spec_helper'

RSpec.describe Chartmogul::V1::Import::Plans do

  let(:client) { Chartmogul::Client.new }

  describe '#create' do
    let(:url) { 'https://api.chartmogul.com/v1/import/plans' }
    let(:body)  { [ {foo: 'bar'} ] }
    let(:query) { {} }

    before do
      stub_request(:post, url).with(body: body.to_json).to_return(status: 201)
    end

    subject { client.import.plans.create(body) }

    it_should_behave_like 'a base ChartMogul API V1 requests', method: :post
  end

  describe '#list' do
    let(:url) { 'https://api.chartmogul.com/v1/import/plans' }
    let(:query) { { } }

    before do
      stub_request(:get, url).with(query: query).to_return(status: 200)
    end

    subject { client.import.plans.list }

    it_should_behave_like 'a base ChartMogul API V1 requests'
  end

end
