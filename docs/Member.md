# Dkron::Member

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Node name | [optional] 
**addr** | **String** | IP Address | [optional] 
**port** | **Integer** | Port number | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Tags asociated with this node | [optional] 
**status** | **Integer** | The serf status of the node see: https://godoc.org/github.com/hashicorp/serf/serf#MemberStatus | [optional] 
**protocol_min** | **Integer** | Serf protocol minimum version this node can understand or speak | [optional] 
**protocol_max** | **Integer** |  | [optional] 
**protocol_cur** | **Integer** | Serf protocol current version this node can understand or speak | [optional] 
**delegate_min** | **Integer** | Serf delegate protocol minimum version this node can understand or speak | [optional] 
**delegate_max** | **Integer** | Serf delegate protocol minimum version this node can understand or speak | [optional] 
**delegate_cur** | **Integer** | Serf delegate protocol minimum version this node can understand or speak | [optional] 


