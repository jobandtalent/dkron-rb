=begin
#Dkron REST API

#You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`.  Dkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port.  Default API responses are unformatted JSON add the `pretty=true` param to format the response. 

OpenAPI spec version: 0.10.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Dkron::MembersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MembersApi' do
  before do
    # run before each test
    @instance = Dkron::MembersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MembersApi' do
    it 'should create an instance of MembersApi' do
      expect(@instance).to be_instance_of(Dkron::MembersApi)
    end
  end

  # unit tests for get_member
  # 
  # List members. 
  # @param [Hash] opts the optional parameters
  # @return [Array<Member>]
  describe 'get_member test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
