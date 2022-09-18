resource "google_sql_database_instance" "postdbql" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"

  settings {

    tier = "db-f1-micro"
  }
}

resource "google_sql_database_instance" "pgdbql2" {
  name             = "postgres-instance"
  database_version = "POSTGRES_11"

  settings {
    tier = "db-f1-micro"

    ip_configuration {

      authorized_networks {
        name  = "pub-network"
        value = "0.0.0.0/0"
      }
    }
  }
}

resource "google_sql_database_instance" "pgdbql4" {
  name             = "master"
  database_version = "POSTGRES_11"
  region           = "us-central1"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"

    ip_configuration {
        ipv4_enabled = true
    }
  }
}

resource "google_sql_database_instance" "dbql5" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"

  settings {

    tier = "db-f1-micro"

    ip_configuration {}
  }
}
