terraform {
  required_providers {
    prod = {
        source = "hashicore/aws"
        version = "1.0"
    }

    dev = {
        source = "hashicore/aws"
        version = "2.0"
    }
  }
}