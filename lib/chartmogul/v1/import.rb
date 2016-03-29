module Chartmogul
  module V1
    class Import < Base
      BASE_URI = "#{BASE_URI}/import"

      # Public: Get customers API.
      #
      # Returns the instance of Chartmogul::V1::Import::Customers.
      def customers
        Chartmogul::V1::Import::Customers.new(client)
      end

      # Public: Get plans API.
      #
      # Returns the instance of Chartmogul::V1::Import::Plans.
      def plans
        Chartmogul::V1::Import::Plans.new(client)
      end

    end
  end
end

require 'chartmogul/v1/import/customers'
require 'chartmogul/v1/import/plans'
