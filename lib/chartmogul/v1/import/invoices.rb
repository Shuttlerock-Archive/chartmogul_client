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
      # invoices    - The Array options used to create a Invoices (default: []).
      #
      # Examples
      #
      #   client.import.customers.invoices.create 'foo', [
      #     {
      #        "external_id": "INV0001",
      #        "date": "2015-11-01 00:00:00",
      #        "currency": "USD",
      #        "due_date": "2015-11-15 00:00:00",
      #        "line_items": [
      #          {
      #            "type": "subscription",
      #            "subscription_external_id": "sub_0001",
      #            "plan_uuid":"pl_eed05d54-75b4-431b-adb2-eb6b9e543206",
      #            "service_period_start": "2015-11-01 00:00:00",
      #            "service_period_end": "2015-12-01 00:00:00",
      #            "amount_in_cents": 5000,
      #            "quantity": 1,
      #            "discount_code": "PSO86",
      #            "discount_amount_in_cents": 1000,
      #            "tax_amount_in_cents": 900
      #          },
      #          {
      #            "type": "one_time",
      #            "description": "Setup Fees",
      #            "amount_in_cents": 2500,
      #            "quantity": 1,
      #            "discount_code": "PSO86",
      #            "discount_amount_in_cents": 500,
      #            "tax_amount_in_cents": 450
      #          }
      #        ],
      #        "transactions": [
      #          {
      #            "date": "2015-11-05 00:14:23",
      #            "type": "payment",
      #            "result": "successful"
      #          }
      #        ]
      #     }
      #   ]
      #
      # Returns the instance of Chartmogul::V1::Request.
      def create(customer_id, invoices = [])
        Chartmogul::V1::Request.new("#{BASE_URI}/#{customer_id}/invoices",
          body:    { invoices: invoices },
          method:  :post,
          userpwd: client.userpwd,
        )
      end

    end
  end
end
