resource "aws_glue_catalog_database" "<database-name>" { # replace  <..> with the name for your database
  catalog_id = "<your-catalog-id>" # replace <..> with your database catalog id. 

  create_table_default_permission {
    permissions = ["ALL"]

    principal {
      data_lake_principal_identifier = "<your-datalake-principal-identifier>" #replace <..> with the principal id
    }
  }
###
  location_uri = "<main-s3-bucket-uri>"
  name         = "<bucket-name>"
}

resource "aws_glue_catalog_database" "<database-name>" {
  catalog_id = "<your-catalog-id>"

  create_table_default_permission {
    permissions = ["ALL"]

    principal {
      data_lake_principal_identifier = "<your-datalake-principal-identifier>"
    }
  }

  description  = "Default database"
  location_uri = "<database-uri>"
  name         = "<database-name>"
}

# add more resources (databases) for your glue instance, in the same format, below as needed