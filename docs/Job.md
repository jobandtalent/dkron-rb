# Dkron::Job

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name for the job. | 
**schedule** | **String** | Cron expression for the job. | 
**command** | **String** | Command to run. | 
**shell** | **BOOLEAN** | Use shell to run the command | [optional] 
**owner** | **String** | Owner of the job | [optional] 
**owner_email** | **String** | Email of the owner | [optional] 
**success_count** | **Integer** | Number of successful executions | [optional] 
**error_count** | **Integer** | Number of failed executions | [optional] 
**last_success** | **DateTime** | Last time this job executed successfully | [optional] 
**last_error** | **DateTime** | Last time this job failed | [optional] 
**disabled** | **BOOLEAN** | Disabled state of the job | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Tags asociated with this node | [optional] 
**retries** | **Integer** | Number of times to retry a failed job execution | [optional] 
**parent_job** | **String** | The name/id of the job that will trigger the execution of this job | [optional] 
**dependent_jobs** | **String** | Array containing the jobs that depends on this one | [optional] 


