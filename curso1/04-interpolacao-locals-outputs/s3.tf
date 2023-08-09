resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.envinronment}"

  tags = local.common_tags
}

resource "aws_s3_bucket" "manual" {
  bucket = "largely-completely-only-funny-grouse-dev"
  tags = {
    Envinronment = "dev"
    Service      = "curso terraform"
    Owner        = "Guilherme Fernandes"
    ManagedBy    = "terraform"
    Importado    = "hoje"
  }
}

resource "aws_s3_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${local.ip_filepath}"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  tags         = local.common_tags
  content_type = local.application_json
}

resource "aws_s3_object" "random" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${random_pet.bucket.id}.json"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  tags         = local.common_tags
  content_type = local.application_json
}