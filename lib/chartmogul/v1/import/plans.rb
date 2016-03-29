module Chartmogul
  module V1
    class Import::Plans < Chartmogul::V1::Base
      BASE_URI = "#{BASE_URI}/import/plans"

      # Public: Import a Plan.
      #
      # See: https://dev.chartmogul.com/docs/import-plan
      #
      # options - The Hash options used to create a Plan (default: {}).
      #
      # Returns the instance of Chartmogul::V1::Request.
      def create(options = {})
        Chartmogul::V1::Request.new(BASE_URI,
          body:    options,
          method:  :post,
          userpwd: client.userpwd,
        )
      end

      # Public: Get list Plans.
      #
      # See: https://dev.chartmogul.com/docs/list-all-imported-plans
      #
      # Returns the instance of Chartmogul::V1::Request.
      def list
        Chartmogul::V1::Request.new BASE_URI, userpwd: client.userpwd
      end
    end
  end
end
