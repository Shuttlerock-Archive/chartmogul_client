module Chartmogul
  module V1
    class Import::Invoices < Chartmogul::V1::Base
      BASE_URI = "#{BASE_URI}/import/customers"

      # Public: Import Invoices.
      #
      # See: https://dev.chartmogul.com/docs/invoices
      #
      # customer_id - The String/Integer ChartMogul ID of the customer.
      #               Specified as part of the URL.
      # options     - The Hash options used to create a Invoices (default: {}).
      #
      # Returns the instance of Chartmogul::V1::Request.
      def create(customer_id, **options)
        Chartmogul::V1::Request.new "#{BASE_URI}/#{customer_id}/invoices", options.merge(method: :post, userpwd: client.userpwd)
      end

    end
  end
end
