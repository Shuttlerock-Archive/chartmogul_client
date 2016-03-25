module Chartmogul
  module V1
    class Customers < Base
      BASE_URI = "#{BASE_URI}/customers"

      # Public: Get customers API.
      #
      # Returns the instance of Chartmogul::V1::Customers::Attributes.
      def attributes
        Attributes.new(client)
      end

      class Attributes < Customers
        # Public: Create Custom Attributes for a Customer
        #
        # See: https://dev.chartmogul.com/docs/create-custom-attributes-for-customer
        #
        # customer_id - The String/Integer ChartMogul ID of the customer.
        #               Specified as part of the URL.
        # options     - The Hash options used to create a Attribute (default: {}):
        #               :type  - The String data type of the custom attribute.
        #                        Can be String, Integer, Timestamp or Boolean.
        #               :key   - The String key of the custom attribute.
        #                        Accepts alphanumeric characters and underscores.
        #               :value - The value of the custom attribute.
        #                        Should be of the data type as specified in *type*.
        #
        # Returns the instance of Chartmogul::V1::Request.
        def create(customer_id, **options)
          Chartmogul::V1::Request.new "#{BASE_URI}/#{customer_id}/attributes/custom", options.merge(method: :post, userpwd: client.userpwd)
        end

        # Public: Update Custom Attributes of a Customer.
        #
        # See: https://dev.chartmogul.com/docs/update-custom-attributes-of-customer
        #
        # customer_id - The String/Integer ChartMogul ID of the customer.
        #               Specified as part of the URL.
        # options     - The Hash options used to refine the Customer attributes (default: {}).
        #
        # Returns the instance of Chartmogul::V1::Request.
        def update(customer_id, **options)
          Chartmogul::V1::Request.new "#{BASE_URI}/#{customer_id}/attributes/custom", options.merge(method: :put, userpwd: client.userpwd)
        end
      end

    end
  end
end
