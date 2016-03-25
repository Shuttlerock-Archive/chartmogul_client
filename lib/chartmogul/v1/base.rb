require 'chartmogul/v1/request'

module Chartmogul
  module V1
    Base = Struct.new(:client) do
      BASE_URI = "#{ Chartmogul::Client::BASE_URI }/v1"
    end
  end
end
