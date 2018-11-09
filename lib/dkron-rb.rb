=begin
#Dkron REST API

#You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`.  Dkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port.  Default API responses are unformatted JSON add the `pretty=true` param to format the response. 

OpenAPI spec version: 0.11.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

# Common files
require 'dkron-rb/api_client'
require 'dkron-rb/api_error'
require 'dkron-rb/version'
require 'dkron-rb/configuration'

# Models
require 'dkron-rb/models/execution'
require 'dkron-rb/models/executor_config'
require 'dkron-rb/models/job'
require 'dkron-rb/models/member'
require 'dkron-rb/models/processors'
require 'dkron-rb/models/status'

# APIs
require 'dkron-rb/api/default_api'
require 'dkron-rb/api/executions_api'
require 'dkron-rb/api/jobs_api'
require 'dkron-rb/api/members_api'

module Dkron
  class << self
    # Customize default settings for the SDK using block.
    #   Dkron.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
