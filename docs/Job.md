# Dkron::Job

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name for the job. | 
**schedule** | **String** | Cron expression for the job. | 
**command** | **String** | Command to run. | 
**shell** | **BOOLEAN** | use shell to run the command | [optional] 
**owner** | **String** | owner of the job | [optional] 
**owner_email** | **String** | email of the owner | [optional] 
**success_count** | **Integer** | number of successful executions | [optional] 
**error_count** | **Integer** | number of failed executions | [optional] 
**last_success** | **DateTime** | last time this job executed successfully | [optional] 
**last_error** | **DateTime** | last time this job failed | [optional] 
**disabled** | **BOOLEAN** | disabled state of the job | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Tags asociated with this node | [optional] 
**retries** | **Integer** | number of times to retry a failed job execution | [optional] 


