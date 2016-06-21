# dkron-rb

Dkron - the Ruby gem for the Dkron REST API

You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`.\n\nDkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port.\n\nDefault API responses are unformatted JSON add the `pretty=true` param to format the response.\n

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.7.2
- Package version: 0.0.1
- Build date: 2016-06-21T10:12:14.155+02:00
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build dkron-rb.gemspec
```

Then either install the gem locally:

```shell
gem install ./dkron-rb-0.0.1.gem
```

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'dkron-rb', '~> 0.0.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USR_ID/YOUR_GIT_REPO_ID, then add the following in the Gemfile:

    gem 'dkron-rb', :git => 'https://github.com/YOUR_GIT_USR_ID/YOUR_GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'dkron-rb'

api_instance = Dkron::DefaultApi.new

begin
  result = api_instance.get_leader
  p result
rescue Dkron::ApiError => e
  puts "Exception when calling DefaultApi->get_leader: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Dkron::DefaultApi* | [**get_leader**](docs/DefaultApi.md#get_leader) | **GET** /leader | 
*Dkron::DefaultApi* | [**leave**](docs/DefaultApi.md#leave) | **GET** /leave | 
*Dkron::DefaultApi* | [**status**](docs/DefaultApi.md#status) | **GET** / | 
*Dkron::ExecutionsApi* | [**list_executions_by_job**](docs/ExecutionsApi.md#list_executions_by_job) | **GET** /executions/{job_name} | 
*Dkron::JobsApi* | [**create_or_update_job**](docs/JobsApi.md#create_or_update_job) | **POST** /jobs | 
*Dkron::JobsApi* | [**delete_job**](docs/JobsApi.md#delete_job) | **DELETE** /jobs/{job_name} | 
*Dkron::JobsApi* | [**get_jobs**](docs/JobsApi.md#get_jobs) | **GET** /jobs | 
*Dkron::JobsApi* | [**run_job**](docs/JobsApi.md#run_job) | **POST** /jobs/{job_name} | 
*Dkron::JobsApi* | [**show_job_by_name**](docs/JobsApi.md#show_job_by_name) | **GET** /jobs/{job_name} | 
*Dkron::MembersApi* | [**get_member**](docs/MembersApi.md#get_member) | **GET** /members | 


## Documentation for Models

 - [Dkron::Execution](docs/Execution.md)
 - [Dkron::Job](docs/Job.md)
 - [Dkron::Member](docs/Member.md)
 - [Dkron::Status](docs/Status.md)


## Documentation for Authorization

 All endpoints do not require authorization.

