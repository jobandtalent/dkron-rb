=begin
Dkron REST API

You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`.\n\nDkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port.\n\nDefault API responses are unformatted JSON add the `pretty=true` param to format the response.\n

OpenAPI spec version: 0.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module Dkron
  class ExecutionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # List executions.\n
    # @param job_name The job that owns the executions to be fetched.
    # @param [Hash] opts the optional parameters
    # @return [Array<Execution>]
    def list_executions_by_job(job_name, opts = {})
      data, status_code, headers = list_executions_by_job_with_http_info(job_name, opts)
      return data
    end

    # 
    # List executions.\n
    # @param job_name The job that owns the executions to be fetched.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Execution>, Fixnum, Hash)>] Array<Execution> data, response status code and response headers
    def list_executions_by_job_with_http_info(job_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExecutionsApi#list_executions_by_job ..."
      end
      
      # verify the required parameter 'job_name' is set
      fail "Missing the required parameter 'job_name' when calling list_executions_by_job" if job_name.nil?
      
      # resource path
      local_var_path = "/executions/{job_name}".sub('{format}','json').sub('{' + 'job_name' + '}', job_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

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
        :return_type => 'Array<Execution>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExecutionsApi#list_executions_by_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
