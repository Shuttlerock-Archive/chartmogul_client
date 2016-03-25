module Chartmogul
  class Client
    BASE_URI = 'https://api.chartmogul.com'

    attr_reader :account_token, :secret_key

    # Public: Constructor.
    #
    # account_token - The String ChartMogul account token.
    # secret_key    - The String ChartMogul secret key.
    def initialize(account_token: nil, secret_key: nil)
      @account_token = account_token
      @secret_key    = secret_key
    end

    # Public: Get userpwd.
    #
    # Returns the String.
    def userpwd
      "#{account_token}:#{secret_key}"
    end

    # Public: Get import API.
    #
    # Returns the instance of Chartmogul::V1::Import.
    def import
      Chartmogul::V1::Import.new(self)
    end

    # Public: Get customers API.
    #
    # Returns the instance of Chartmogul::V1::Customers.
    def customers
      Chartmogul::V1::Customers.new(self)
    end
  end
end

require 'chartmogul/v1/base'
require 'chartmogul/v1/import'
require 'chartmogul/v1/customers'
