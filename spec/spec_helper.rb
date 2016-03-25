require 'webmock/rspec'
require_relative '../lib/chartmogul_client'
Dir[File.join("./spec/support/**/*.rb")].each { |f| require f }
