=begin
#Dkron REST API

#You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`.  Dkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port.  Default API responses are unformatted JSON add the `pretty=true` param to format the response. 

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.18

=end

require 'uri'

module Dkron
  class JobsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create or updates a new job. 
    # @param body Updated job object
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :runoncreate If present, regardless of any value, causes the job to be run immediately after being succesfully created or updated.
    # @return [Job]
    def create_or_update_job(body, opts = {})
      data, _status_code, _headers = create_or_update_job_with_http_info(body, opts)
      data
    end

    # Create or updates a new job. 
    # @param body Updated job object
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :runoncreate If present, regardless of any value, causes the job to be run immediately after being succesfully created or updated.
    # @return [Array<(Job, Fixnum, Hash)>] Job data, response status code and response headers
    def create_or_update_job_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.create_or_update_job ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling JobsApi.create_or_update_job"
      end
      # resource path
      local_var_path = '/jobs'

      # query parameters
      query_params = {}
      query_params[:'runoncreate'] = opts[:'runoncreate'] if !opts[:'runoncreate'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Job')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#create_or_update_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a job. 
    # @param job_name The job that needs to be deleted.
    # @param [Hash] opts the optional parameters
    # @return [Job]
    def delete_job(job_name, opts = {})
      data, _status_code, _headers = delete_job_with_http_info(job_name, opts)
      data
    end

    # Delete a job. 
    # @param job_name The job that needs to be deleted.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Job, Fixnum, Hash)>] Job data, response status code and response headers
    def delete_job_with_http_info(job_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.delete_job ...'
      end
      # verify the required parameter 'job_name' is set
      if @api_client.config.client_side_validation && job_name.nil?
        fail ArgumentError, "Missing the required parameter 'job_name' when calling JobsApi.delete_job"
      end
      # resource path
      local_var_path = '/jobs/{job_name}'.sub('{' + 'job_name' + '}', job_name.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Job')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#delete_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List jobs. 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metadata Filter jobs by metadata
    # @option opts [String] :_sort Sorting field
    # @option opts [String] :_order Sort order (ASC/DESC)
    # @option opts [String] :q Filter query text
    # @option opts [Integer] :_start Start index
    # @option opts [Integer] :_end End index
    # @return [Array<Job>]
    def get_jobs(opts = {})
      data, _status_code, _headers = get_jobs_with_http_info(opts)
      data
    end

    # List jobs. 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metadata Filter jobs by metadata
    # @option opts [String] :_sort Sorting field
    # @option opts [String] :_order Sort order (ASC/DESC)
    # @option opts [String] :q Filter query text
    # @option opts [Integer] :_start Start index
    # @option opts [Integer] :_end End index
    # @return [Array<(Array<Job>, Fixnum, Hash)>] Array<Job> data, response status code and response headers
    def get_jobs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.get_jobs ...'
      end
      # resource path
      local_var_path = '/jobs'

      # query parameters
      query_params = {}
      query_params[:'metadata'] = @api_client.build_collection_param(opts[:'metadata'], :multi) if !opts[:'metadata'].nil?
      query_params[:'_sort'] = opts[:'_sort'] if !opts[:'_sort'].nil?
      query_params[:'_order'] = opts[:'_order'] if !opts[:'_order'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'_start'] = opts[:'_start'] if !opts[:'_start'].nil?
      query_params[:'_end'] = opts[:'_end'] if !opts[:'_end'].nil?

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
        :return_type => 'Array<Job>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#get_jobs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Restore jobs from json file. 
    # @param file Json file that needs to be restored.
    # @param [Hash] opts the optional parameters
    # @return [Array<Restore>]
    def restore(file, opts = {})
      data, _status_code, _headers = restore_with_http_info(file, opts)
      data
    end

    # Restore jobs from json file. 
    # @param file Json file that needs to be restored.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Restore>, Fixnum, Hash)>] Array<Restore> data, response status code and response headers
    def restore_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.restore ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling JobsApi.restore"
      end
      # resource path
      local_var_path = '/restore'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params['file'] = file

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Restore>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#restore\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Executes a job. 
    # @param job_name The job that needs to be run.
    # @param [Hash] opts the optional parameters
    # @return [Job]
    def run_job(job_name, opts = {})
      data, _status_code, _headers = run_job_with_http_info(job_name, opts)
      data
    end

    # Executes a job. 
    # @param job_name The job that needs to be run.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Job, Fixnum, Hash)>] Job data, response status code and response headers
    def run_job_with_http_info(job_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.run_job ...'
      end
      # verify the required parameter 'job_name' is set
      if @api_client.config.client_side_validation && job_name.nil?
        fail ArgumentError, "Missing the required parameter 'job_name' when calling JobsApi.run_job"
      end
      # resource path
      local_var_path = '/jobs/{job_name}'.sub('{' + 'job_name' + '}', job_name.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Job')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#run_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Show a job. 
    # @param job_name The job that needs to be fetched.
    # @param [Hash] opts the optional parameters
    # @return [Job]
    def show_job_by_name(job_name, opts = {})
      data, _status_code, _headers = show_job_by_name_with_http_info(job_name, opts)
      data
    end

    # Show a job. 
    # @param job_name The job that needs to be fetched.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Job, Fixnum, Hash)>] Job data, response status code and response headers
    def show_job_by_name_with_http_info(job_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.show_job_by_name ...'
      end
      # verify the required parameter 'job_name' is set
      if @api_client.config.client_side_validation && job_name.nil?
        fail ArgumentError, "Missing the required parameter 'job_name' when calling JobsApi.show_job_by_name"
      end
      # resource path
      local_var_path = '/jobs/{job_name}'.sub('{' + 'job_name' + '}', job_name.to_s)

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
        :return_type => 'Job')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#show_job_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Toggle a job. 
    # @param job_name The job that needs to be toggled.
    # @param [Hash] opts the optional parameters
    # @return [Job]
    def toggle_job(job_name, opts = {})
      data, _status_code, _headers = toggle_job_with_http_info(job_name, opts)
      data
    end

    # Toggle a job. 
    # @param job_name The job that needs to be toggled.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Job, Fixnum, Hash)>] Job data, response status code and response headers
    def toggle_job_with_http_info(job_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.toggle_job ...'
      end
      # verify the required parameter 'job_name' is set
      if @api_client.config.client_side_validation && job_name.nil?
        fail ArgumentError, "Missing the required parameter 'job_name' when calling JobsApi.toggle_job"
      end
      # resource path
      local_var_path = '/jobs/{job_name}/toggle'.sub('{' + 'job_name' + '}', job_name.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Job')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#toggle_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
