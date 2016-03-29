require 'hashie'
require 'typhoeus'
require 'multi_json'

module Chartmogul
  module V1
    class Request
      attr_reader :url, :userpwd, :params, :response

      # Public: Constructor.
      #
      # url     - The String url.
      # body    - The String body (default: nil).
      # headers - The Hash headers (default: {}).
      # method  - The Symbol request method (default: :get).
      # userpwd - The String with credentials for Basic Authentication (default: nil).
      # params  - The Hash query params (default: {}).
      def initialize(url, body: nil, headers: {}, method: :get, userpwd: nil, **params)
        @url     = url
        @userpwd = userpwd
        @params  = params

        if body
          body = MultiJson.dump(body)
          headers.merge!('Content-Type' => 'application/json')
        end

        @response = Typhoeus::Request.new(url,
          body:           body,
          connecttimeout: 5,
          headers:        headers,
          method:         method,
          params:         params,
          timeout:        10,
          userpwd:        userpwd,
        ).run
      end

      # Public: Get next page.
      #
      # Returns the instance of Chartmogul::V1::Request.
      def next_page
        Request.new url, params.merge(page: params[:page] + 1, userpwd: userpwd)
      end

      # Returns true at successful request , false otherwise.
      def ok?
        [200, 201].include? code
      end

      # Public: Get response code.
      #
      # Returns Integer code of response.
      def code
        response.code
      end

      # Public: Get return code.
      #
      # Returns Integer return code.
      def return_code
        response.return_code
      end

      # Public: Get body.
      #
      # Returns the instance of Hashie::Mash.
      def body
        @body ||= Hashie::Mash.new(MultiJson.load response.body || '')
      end

    end
  end
end
