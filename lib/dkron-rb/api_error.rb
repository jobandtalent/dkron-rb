=begin
#Dkron REST API

#You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`.  Dkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port.  Default API responses are unformatted JSON add the `pretty=true` param to format the response. 

OpenAPI spec version: 0.9.2

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

module Dkron
  class ApiError < StandardError
    attr_reader :code, :response_headers, :response_body

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:code => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        arg.each do |k, v|
          if k.to_s == 'message'
            super v
          else
            instance_variable_set "@#{k}", v
          end
        end
      else
        super arg
      end
    end
  end
end
