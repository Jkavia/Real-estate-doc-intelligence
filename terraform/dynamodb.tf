resource "aws_dynamodb_table" "document_metadata" {
  name           = "real-estate-doc-metadata"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "DocumentID"

  attribute {
    name = "DocumentID"
    type = "S"
  }

  tags = {
    Name        = "Real Estate Document Metadata"
    Project     = "Real Estate Doc Intelligence"
  }
}