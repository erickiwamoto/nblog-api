require 'airborne'
require 'faker'

$env = ENV['RACK_ENV']

if $env.eql?('qa')
    @base_url = 'https://nblog-api-qa-erick.herokuapp.com'
elsif $env.eql?('uat')
    @base_url = 'https://nblog-api-uat-erick.herokuapp.com'
elsif $env.eql?('production')
    @base_url = 'https://nblog-api-erick.herokuapp.com'
end

include Airborne

Airborne.configure do |config|
    config.base_url = @base_url
end

