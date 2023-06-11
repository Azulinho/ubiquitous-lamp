generate_hcl "mysite.tf" {
  content {
    resource "local_file" "mysite" {
      filename = "/tmp/index.html"
      content  = <<-EOF
        <html>
          <title>${global.title}</title>
        </html>
      EOF
    }
  }
}
