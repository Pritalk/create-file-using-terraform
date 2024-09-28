terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

resource "local_file" "foo" {
  content  = "I love myself :)"
  filename = "my_special_file"
}
