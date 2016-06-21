# Dkron::ExecutionsApi

All URIs are relative to *http://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_executions_by_job**](ExecutionsApi.md#list_executions_by_job) | **GET** /executions/{job_name} | 


# **list_executions_by_job**
> Array&lt;Execution&gt; list_executions_by_job(job_name)



List executions.\n

### Example
```ruby
# load the gem
require 'dkron-rb'

api_instance = Dkron::ExecutionsApi.new

job_name = "job_name_example" # String | The job that owns the executions to be fetched.


begin
  result = api_instance.list_executions_by_job(job_name)
  p result
rescue Dkron::ApiError => e
  puts "Exception when calling ExecutionsApi->list_executions_by_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_name** | **String**| The job that owns the executions to be fetched. | 

### Return type

[**Array&lt;Execution&gt;**](Execution.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



