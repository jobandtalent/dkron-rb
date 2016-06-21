# Dkron::DefaultApi

All URIs are relative to *http://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_leader**](DefaultApi.md#get_leader) | **GET** /leader | 
[**leave**](DefaultApi.md#leave) | **GET** /leave | 
[**status**](DefaultApi.md#status) | **GET** / | 


# **get_leader**
> Member get_leader



List members.\n

### Example
```ruby
# load the gem
require 'dkron-rb'

api_instance = Dkron::DefaultApi.new

begin
  result = api_instance.get_leader
  p result
rescue Dkron::ApiError => e
  puts "Exception when calling DefaultApi->get_leader: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Member**](Member.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **leave**
> Array&lt;Member&gt; leave



Force the node to leave the cluster.\n

### Example
```ruby
# load the gem
require 'dkron-rb'

api_instance = Dkron::DefaultApi.new

begin
  result = api_instance.leave
  p result
rescue Dkron::ApiError => e
  puts "Exception when calling DefaultApi->leave: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Member&gt;**](Member.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **status**
> InlineResponse200 status



Gets `Status` object.\n

### Example
```ruby
# load the gem
require 'dkron-rb'

api_instance = Dkron::DefaultApi.new

begin
  result = api_instance.status
  p result
rescue Dkron::ApiError => e
  puts "Exception when calling DefaultApi->status: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



