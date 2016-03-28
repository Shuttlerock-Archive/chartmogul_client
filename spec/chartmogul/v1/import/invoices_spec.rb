require 'spec_helper'

RSpec.describe Chartmogul::V1::Import::Invoices do

  let(:client) { Chartmogul::Client.new }

  describe '#create' do
    let(:url) { 'https://api.chartmogul.com/v1/import/customers/customer-id/invoices' }
    let(:query) { { foo: 'bar' } }

    before do
      stub_request(:post, url).with(query: query).to_return(status: 201)
    end

    subject { client.import.customers.invoices.create('customer-id', query) }

    it_should_behave_like 'a base ChartMogul API V1 requests', method: :post
  end

end
