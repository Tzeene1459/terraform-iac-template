resource "aws_glue_trigger" "<trigger-id-or-name>" {
  actions {
    job_name = "<attached-job-name>"
    timeout  = "0"
  }

  enabled  = "<false/true>"
  name     = "<trigger-name>"
  schedule = "<schedule-in-cron-format>" # Enter the schedule of this trigger as a cron expression using cron(Minutes Hours Day-of-month Month Day-of-week Year). Eg. cron(0 0 * * ? *) is daily 
  type     = "SCHEDULED"
}
