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
**tags** | **Hash&lt;String, String&gt;** | Target nodes tags of this job | [optional] 
**retries** | **Integer** | Number of times to retry a failed job execution | [optional] 
**parent_job** | **String** | The name/id of the job that will trigger the execution of this job | [optional] 
**dependent_jobs** | [**Array&lt;null&gt;**](.md) | Array containing the jobs that depends on this one | [optional] 
**processors** | **Hash&lt;String, String&gt;** | Processor plugins used to process executions results of this job | [optional] 
**concurrency** | **String** | Concurrency policy for the job allow/forbid | [optional] 


