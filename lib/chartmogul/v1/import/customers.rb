require 'chartmogul/v1/import/invoices'

module Chartmogul
  module V1
    class Import::Customers < Chartmogul::V1::Base
      BASE_URI = "#{BASE_URI}/import/customers"

      # Public: Get invoices API.
      #
      # Returns the instance of Chartmogul::V1::Import::Invoices.
      def invoices
        Chartmogul::V1::Import::Invoices.new(client)
      end

      # Public: Import a Customer.
      #
      # See: https://dev.chartmogul.com/docs/import-customer
      #
      # options - The Hash options used to create a Customer (default: {}):
      #           :data_source_uuid - The String ChartMogul UUID of the data
      #                               source that this customer comes from.
      #           :external_id      - The String unique identifier specified by you for the customer.
      #                               Typically an identifier from your internal system.
      #                               Accepts alphanumeric characters.
      #           :name             - The String name of the customer for display purposes.
      #                               Accepts alphanumeric characters.
      #           :email            - The String Email address of the customer (optional).
      #           :company          - The String customer's company or organisation (optional).
      #           :country          - The String Country code of customer's location
      #                               as per ISO-3166 alpha-2 standard (optional).
      #           :state            - The String State code of customer's location
      #                               as per ISO-3166 alpha-2 standard (optional).
      #           :city             - The String city of the customer's location (optional).
      #           :zip              - The String zip code of the customer's location (optional).
      #
      # Returns the instance of Chartmogul::V1::Request.
      def create(options = {})
        Chartmogul::V1::Request.new BASE_URI, options.merge(method: :post, userpwd: client.userpwd)
      end

      # Public: Get list Customers.
      #
      # See: https://dev.chartmogul.com/docs/list-all-imported-customers
      #
      # Returns the instance of Chartmogul::V1::Request.
      def list
        Chartmogul::V1::Request.new BASE_URI, userpwd: client.userpwd
      end
    end
  end
end
