require 'spec_helper'

RSpec.describe Chartmogul::V1::Customers do

  let(:client) { Chartmogul::Client.new }

  describe '#attributes' do
    subject { client.customers.attributes }

    it { expect(subject).to be_a Chartmogul::V1::Customers::Attributes }
    it { expect(subject.client).to eq client }
  end

  describe '::Attributes' do
    describe '#create' do
      let(:url) { 'https://api.chartmogul.com/v1/customers/customer-id/attributes/custom' }
      let(:body)  { [ {foo: 'bar'} ] }
      let(:query) { {} }

      before do
        stub_request(:post, url).with(body: { custom: body }.to_json).to_return(status: 200)
      end

      subject { client.customers.attributes.create('customer-id', body) }

      it_should_behave_like 'a base ChartMogul API V1 requests', method: :post
    end

    describe '#update' do
      let(:url) { 'https://api.chartmogul.com/v1/customers/customer-id/attributes/custom' }
      let(:body)  { [ {foo: 'bar'} ] }
      let(:query) { {} }

      before do
        stub_request(:put, url).with(body: { custom: body }.to_json).to_return(status: 200)
      end

      subject { client.customers.attributes.update('customer-id', body) }

      it_should_behave_like 'a base ChartMogul API V1 requests', method: :put
    end
  end
end
