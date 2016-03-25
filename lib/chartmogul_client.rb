require 'chartmogul/client'

module Chartmogul

  autoload :VERSION, File.join(File.dirname(__FILE__), 'chartmogul/version')

  class << self
    # Public: Constructor.
    #
    # account_token - The String ChartMogul account token.
    # secret_key    - The String ChartMogul secret key.
    #
    # Returns the instance of Chartmogul::Client.
    def new(account_token: nil, secret_key: nil)
      Chartmogul::Client.new(account_token: account_token, secret_key: secret_key)
    end
  end

end
