# once you have created the resources, then if you followed this example, you would have one of each: 

output "aws_glue_catalog_database_id" {
  value = "${aws_glue_catalog_database.<db.id>}" # replace <..> with the id followed by .id
}

output "aws_glue_catalog_table_id" {
  value = "${aws_glue_catalog_table.<table.id>}"
}

output "aws_glue_crawler_id" {
  value = "${aws_glue_crawler.<crawler.id>}"
}

output "aws_glue_job_id" {
  value = "${aws_glue_job.<job.id>}"
}

output "aws_glue_trigger_id" {
  value = "${aws_glue_trigger.<trigger.id>}"
}
