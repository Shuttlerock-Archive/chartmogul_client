module Chartmogul
  module V1
    class Import::Subscriptions < Chartmogul::V1::Base
      BASE_URI = "#{BASE_URI}/import"

      # Public: Cancel Imported Customer's Subscription.
      #
      # See: https://dev.chartmogul.com/docs/cancel-a-customers-subscription
      #
      # uuid         - The String ChartMogul UUID of the subscription that needs to be cancelled.
      # cancelled_at - The Time at which the subscription was cancelled.
      #
      # Returns the instance of Chartmogul::V1::Request.
      def cancel(uuid, cancelled_at)
        Chartmogul::V1::Request.new("#{BASE_URI}/subscriptions/#{uuid}",
          body:    { cancelled_at: cancelled_at.iso8601 },
          method:  :put,
          userpwd: client.userpwd,
        )
      end

      # Public: List Customer's Subscriptions.
      #
      # See: https://dev.chartmogul.com/docs/list-a-customers-subscriptions
      #
      # uuid - The String ChartMogul UUID of the Customer whose subscriptions are required. Specified as part of the URL.
      #
      # Returns the instance of Chartmogul::V1::Request.
      def list(uuid)
        Chartmogul::V1::Request.new "#{BASE_URI}/customers/#{uuid}/subscriptions", userpwd: client.userpwd
      end
    end
  end
end
