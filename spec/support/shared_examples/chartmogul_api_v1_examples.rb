shared_examples 'a base ChartMogul API V1 requests' do |method: :get|

  it { expect(subject).to be_a Chartmogul::V1::Request }
  it { expect(subject.ok?).to be_truthy }

  context '400 response code on request' do
    before do
      stub_request(method, url).with(query: query).to_return(status: 400)
    end

    it { expect { subject }.to_not raise_error }
    it { expect(subject.ok?).to be_falsy }
  end
end
