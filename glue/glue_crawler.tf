resource "aws_glue_crawler" "<crawler-identifier>" {
  configuration = "{\"Version\":1.0,\"CrawlerOutput\":{\"Tables\":{\"AddOrUpdateBehavior\":\"MergeNewColumns\"}},\"Grouping\":{\"TableGroupingPolicy\":\"CombineCompatibleSchemas\"},\"CreatePartitionIndex\":true}" # update as needed
  database_name = "<db-name>" 

  lineage_configuration {
    crawler_lineage_settings = "DISABLE" # or enable
  }

  name = "<crawler-name>"

  recrawl_policy {
    recrawl_behavior = "CRAWL_EVERYTHING"
  }

  role = "<enter-service-role>" # eg. "service-role/AWSGlueServiceRole"

  s3_target {
    path        = "<enter-s3-bucket-to-crawl>"
    sample_size = "0"
  }

  schema_change_policy {
    delete_behavior = "DEPRECATE_IN_DATABASE"
    update_behavior = "LOG"
  }
}
# add more resources below as required