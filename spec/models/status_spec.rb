=begin
#Dkron REST API

#You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`.  Dkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port.  Default API responses are unformatted JSON add the `pretty=true` param to format the response. 

OpenAPI spec version: 0.10.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Dkron::Status
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Status' do
  before do
    # run before each test
    @instance = Dkron::Status.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Status' do
    it 'should create an instance of Status' do
      expect(@instance).to be_instance_of(Dkron::Status)
    end
  end
end

