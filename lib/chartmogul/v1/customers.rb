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

      def email_attributes
        EmailAttributes.new(client)
      end

      class Attributes < Customers
        # Public: Create Custom Attributes for a Customer
        #
        # See: https://dev.chartmogul.com/docs/create-custom-attributes-for-customer
        #
        # customer_id - The String/Integer ChartMogul ID of the customer.
        #               Specified as part of the URL.
        # attributes  - The Array options used to create a Attributes (default: []).
        #
        # Examples
        #
        #   client.customers.attributes.create 'foo', [
        #     { type: 'String',  key: 'bar', value: 'baz' },
        #     { type: 'Integer', key: 'qux', value: 1 }
        #   ]
        #
        # Returns the instance of Chartmogul::V1::Request.
        def create(customer_id, attributes = [])
          Chartmogul::V1::Request.new("#{BASE_URI}/#{customer_id}/attributes/custom",
            body:    { custom: attributes },
            method:  :post,
            userpwd: client.userpwd,
          )
        end

        # Public: Update Custom Attributes of a Customer.
        #
        # See: https://dev.chartmogul.com/docs/update-custom-attributes-of-customer
        #
        # customer_id - The String/Integer ChartMogul ID of the customer.
        #               Specified as part of the URL.
        # attributes  - The Array options used to refine the Customer attributes (default: []).
        #
        # Examples
        #
        #   client.customers.attributes.update 'foo', [
        #     { type: 'String',  key: 'bar', value: 'baz' },
        #     { type: 'Integer', key: 'qux', value: 1 }
        #   ]
        #
        # Returns the instance of Chartmogul::V1::Request.
        def update(customer_id, attributes = [])
          Chartmogul::V1::Request.new("#{BASE_URI}/#{customer_id}/attributes/custom",
            body:    { custom: attributes },
            method:  :put,
            userpwd: client.userpwd,
          )
        end
      end

      class EmailAttributes < Customers
        # Public: Create Custom Attributes for a Customer
        #
        # See: https://dev.chartmogul.com/docs/create-custom-attributes-for-customer
        #
        # email - The String email of the customer.
        # attributes  - The Array options used to create a Attributes (default: []).
        #
        # Examples
        #
        #   client.customers.attributes.create 'alex@clearbit.com', [
        #     { type: 'String',  key: 'bar', value: 'baz' },
        #     { type: 'Integer', key: 'qux', value: 1 }
        #   ]
        #
        # Returns the instance of Chartmogul::V1::Request.
        def create(email, attributes = [])
          Chartmogul::V1::Request.new("#{BASE_URI}/attributes/custom",
            body:    { email: email, custom: attributes },
            method:  :post,
            userpwd: client.userpwd,
          )
        end
      end
    end
  end
end
