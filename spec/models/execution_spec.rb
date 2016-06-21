=begin
Dkron REST API

You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`.\n\nDkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port.\n\nDefault API responses are unformatted JSON add the `pretty=true` param to format the response.\n

OpenAPI spec version: 0.7.2

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Dkron::Execution
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Execution' do
  before do
    # run before each test
    @instance = Dkron::Execution.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Execution' do
    it 'should create an instact of Execution' do
      @instance.should be_a(Dkron::Execution) 
    end
  end
  describe 'test attribute "job_name"' do
    it 'should work' do
       # assertion here
       # should be_a()
       # should be_nil
       # should ==
       # should_not ==
    end
  end

  describe 'test attribute "started_at"' do
    it 'should work' do
       # assertion here
       # should be_a()
       # should be_nil
       # should ==
       # should_not ==
    end
  end

  describe 'test attribute "finished_at"' do
    it 'should work' do
       # assertion here
       # should be_a()
       # should be_nil
       # should ==
       # should_not ==
    end
  end

  describe 'test attribute "success"' do
    it 'should work' do
       # assertion here
       # should be_a()
       # should be_nil
       # should ==
       # should_not ==
    end
  end

  describe 'test attribute "output"' do
    it 'should work' do
       # assertion here
       # should be_a()
       # should be_nil
       # should ==
       # should_not ==
    end
  end

  describe 'test attribute "node_name"' do
    it 'should work' do
       # assertion here
       # should be_a()
       # should be_nil
       # should ==
       # should_not ==
    end
  end

end

