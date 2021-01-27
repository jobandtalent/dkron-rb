# Dkron::MembersApi

All URIs are relative to *http://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_member**](MembersApi.md#get_member) | **GET** /members | 


# **get_member**
> Array&lt;Member&gt; get_member



List members. 

### Example
```ruby
# load the gem
require 'dkron-rb'

api_instance = Dkron::MembersApi.new

begin
  result = api_instance.get_member
  p result
rescue Dkron::ApiError => e
  puts "Exception when calling MembersApi->get_member: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Member&gt;**](Member.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



