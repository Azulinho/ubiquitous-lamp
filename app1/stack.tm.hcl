stack {
  name        = "app1"
  description = "app1"
  id          = "b2398e1b-e71e-473a-8f2f-f4af0b1502f8"
}


# file: mysite/stack.tm.hcl
...
generate_hcl "mysite.tf" {
  content {
    resource "local_file" "mysite" {
      filename = "/tmp/tfmysite/index.html"
      content  = <<-EOF
        <html>
          <title>My Website</title>
        </html>
      EOF
    }
  }
}

