# template to store glue jobs as terraform resources 

resource "aws_glue_job" "<job-identifier>" {
  command {
    name            = "pythonshell"
    python_version  = "3.9"
    script_location = "<script-path>" # enter the path to where you're storing your script (could be an s3 path)
  }
# update all paramters below this point as needed 

  default_arguments = {
    "--TempDir"                         = "<script-path>"
    "--additional-python-modules"       = "mysql-connector-python,SQLAlchemy,cryptography,pycryptodomex"
    "--enable-glue-datacatalog"         = "true"
    "--enable-job-insights"             = "false"
    "--job-language"                    = "python"
    "--python-modules-installer-option" = "--upgrade"
  }

  execution_class = "STANDARD"

  execution_property {
    max_concurrent_runs = "1"
  }

  glue_version      = "3.0"
  max_capacity      = "0.0625"
  max_retries       = "0"
  name              = "<job-name>"
  number_of_workers = "0"
  role_arn          = "<service-rol-arn>"
  timeout           = "2880"
}

# add more below in the same format as needed 