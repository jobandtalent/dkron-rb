# Dkron::JobsApi

All URIs are relative to *http://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_or_update_job**](JobsApi.md#create_or_update_job) | **POST** /jobs | 
[**delete_job**](JobsApi.md#delete_job) | **DELETE** /jobs/{job_name} | 
[**get_jobs**](JobsApi.md#get_jobs) | **GET** /jobs | 
[**run_job**](JobsApi.md#run_job) | **POST** /jobs/{job_name} | 
[**show_job_by_name**](JobsApi.md#show_job_by_name) | **GET** /jobs/{job_name} | 
[**toggle_job**](JobsApi.md#toggle_job) | **POST** /jobs/{job_name}/toggle | 


# **create_or_update_job**
> Job create_or_update_job(body)



Create or updates a new job. 

### Example
```ruby
# load the gem
require 'dkron-rb'

api_instance = Dkron::JobsApi.new

body = Dkron::Job.new # Job | Updated job object


begin
  result = api_instance.create_or_update_job(body)
  p result
rescue Dkron::ApiError => e
  puts "Exception when calling JobsApi->create_or_update_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Job**](Job.md)| Updated job object | 

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_job**
> Job delete_job(job_name)



Delete a job. 

### Example
```ruby
# load the gem
require 'dkron-rb'

api_instance = Dkron::JobsApi.new

job_name = 'job_name_example' # String | The job that needs to be deleted.


begin
  result = api_instance.delete_job(job_name)
  p result
rescue Dkron::ApiError => e
  puts "Exception when calling JobsApi->delete_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_name** | **String**| The job that needs to be deleted. | 

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_jobs**
> Array&lt;Job&gt; get_jobs(opts)



List jobs. 

### Example
```ruby
# load the gem
require 'dkron-rb'

api_instance = Dkron::JobsApi.new

opts = { 
  tags: ['tags_example'] # Array<String> | Filter jobs by tags
}

begin
  result = api_instance.get_jobs(opts)
  p result
rescue Dkron::ApiError => e
  puts "Exception when calling JobsApi->get_jobs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| Filter jobs by tags | [optional] 

### Return type

[**Array&lt;Job&gt;**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **run_job**
> Job run_job(job_name)



Executes a job. 

### Example
```ruby
# load the gem
require 'dkron-rb'

api_instance = Dkron::JobsApi.new

job_name = 'job_name_example' # String | The job that needs to be run.


begin
  result = api_instance.run_job(job_name)
  p result
rescue Dkron::ApiError => e
  puts "Exception when calling JobsApi->run_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_name** | **String**| The job that needs to be run. | 

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **show_job_by_name**
> Job show_job_by_name(job_name)



Show a job. 

### Example
```ruby
# load the gem
require 'dkron-rb'

api_instance = Dkron::JobsApi.new

job_name = 'job_name_example' # String | The job that needs to be fetched.


begin
  result = api_instance.show_job_by_name(job_name)
  p result
rescue Dkron::ApiError => e
  puts "Exception when calling JobsApi->show_job_by_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_name** | **String**| The job that needs to be fetched. | 

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **toggle_job**
> Job toggle_job(job_name)



Toggle a job. 

### Example
```ruby
# load the gem
require 'dkron-rb'

api_instance = Dkron::JobsApi.new

job_name = 'job_name_example' # String | The job that needs to be toggled.


begin
  result = api_instance.toggle_job(job_name)
  p result
rescue Dkron::ApiError => e
  puts "Exception when calling JobsApi->toggle_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_name** | **String**| The job that needs to be toggled. | 

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



