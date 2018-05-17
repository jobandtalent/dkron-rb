=begin
#Dkron REST API

#You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`.  Dkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port.  Default API responses are unformatted JSON add the `pretty=true` param to format the response. 

OpenAPI spec version: 0.10.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module Dkron
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # List leader of cluster. 
    # @param [Hash] opts the optional parameters
    # @return [Member]
    def get_leader(opts = {})
      data, _status_code, _headers = get_leader_with_http_info(opts)
      return data
    end

    # 
    # List leader of cluster. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Member, Fixnum, Hash)>] Member data, response status code and response headers
    def get_leader_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.get_leader ..."
      end
      # resource path
      local_var_path = "/leader"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Member')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_leader\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Force the node to leave the cluster. 
    # @param [Hash] opts the optional parameters
    # @return [Array<Member>]
    def leave(opts = {})
      data, _status_code, _headers = leave_with_http_info(opts)
      return data
    end

    # 
    # Force the node to leave the cluster. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Member>, Fixnum, Hash)>] Array<Member> data, response status code and response headers
    def leave_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.leave ..."
      end
      # resource path
      local_var_path = "/leave"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Member>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#leave\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Gets `Status` object. 
    # @param [Hash] opts the optional parameters
    # @return [Status]
    def status(opts = {})
      data, _status_code, _headers = status_with_http_info(opts)
      return data
    end

    # 
    # Gets &#x60;Status&#x60; object. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Status, Fixnum, Hash)>] Status data, response status code and response headers
    def status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.status ..."
      end
      # resource path
      local_var_path = "/"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Status')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
