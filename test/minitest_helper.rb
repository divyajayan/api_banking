$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'api_banking'

require 'minitest/autorun'
require 'securerandom'

Typhoeus::Config.verbose = false

ApiBanking::FundsTransferByCustomerService2.configure do |config|  
  config.environment = ApiBanking::Environment::YBL::UAT.new(ENV['API_UAT_USER'], ENV['API_UAT_PASSWORD'], ENV['API_UAT_CLIENT_ID'], ENV['API_UAT_CLIENT_SECRET']  )
#  config.environment = ApiBanking::Environment::YBL::PRD.new(ENV['API_USER'], ENV['API_PASSWORD'], ENV['API_CLIENT_ID'], ENV['API_CLIENT_SECRET'], ENV['API_CLIENT_CERT'], ENV['API_CLIENT_KEY'])
end

ApiBanking::FundsTransferByCustomerService.configure do |config|
  config.environment = ApiBanking::Environment::YBL::UAT.new(ENV['API_UAT_USER'], ENV['API_UAT_PASSWORD'], ENV['API_UAT_CLIENT_ID'], ENV['API_UAT_CLIENT_SECRET']  )
  
  config.environment = ApiBanking::Environment::YBL::PRD.new(ENV['API_USER'], ENV['API_PASSWORD'], ENV['API_CLIENT_ID'], ENV['API_CLIENT_SECRET'], ENV['API_CLIENT_CERT'], ENV['API_CLIENT_KEY'])
end