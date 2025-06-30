resource "aws_glue_catalog_table" "<glue-catalog-table-id>" { # replace <..> with the id of your glue table
  catalog_id    = "<your-catalog-id>"
  database_name = "<your-db>"
  name          = "<name>"
  owner         = "<username>"

  parameters = { # update according to your table paramteres
    CrawlerSchemaDeserializerVersion = "1.0"
    CrawlerSchemaSerializerVersion   = "1.0"
    UPDATED_BY_CRAWLER               = "<crawler-name>"
    areColumnsQuoted                 = "false"
    averageRecordSize                = "99"
    classification                   = "csv"
    columnsOrdered                   = "true"
    compressionType                  = "none"
    delimiter                        = ","
    objectCount                      = "255"
    recordCount                      = "2495"
    sizeKey                          = "280915"
    "skip.header.line.count"         = "1"
    typeOfData                       = "file"
  }

  partition_keys {
    name = "<key-name>"
    type = "string"
  }

  partition_keys {
    name = "<key2-name>"
    type = "string"
  }

  retention = "<enter-value>"

  storage_descriptor {
    columns {
      name = "<column-name>"
      type = "<column-type>"
    }

    compressed        = "false"
    input_format      = "<enter-input-format>" # eg. org.apache.hadoop.mapred.TextInputFormat
    location          = "<your-s3-bucket-loc>"
    number_of_buckets = "<number>" # eg. 1 
    output_format     = "<output-format>" # eg. org.apache.hadoop.mapred.TextInputFormat

    ser_de_info {
      parameters = {
        separatorChar = "," # update as required 
      }

      serialization_library = "<serialization-library-name>" # eg. org.apache.hadoop.hive.serde2.OpenCSVSerde
    }

    stored_as_sub_directories = "false"
  }

  table_type = "<table-type>" # eg. "EXTERNAL_TABLE"
}

# add more resources below as needed in the same format