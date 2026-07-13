variable "git_organization" {
  type = string
  description = "GitHub Organization where to fetch variables" 
}

variable "initiative" {
  type = string
  description = "Name of business unit"
}

variable "environment" {
  type = string
  description = "Short Lifecycle identifier"
}

variable "tier" { 
  type = string
  description = "Qualifies this lifecycle as upper or lower"
}

variable "bucket_prefix" { 
  type = string
  description = "Prefix to be used in any S3 bucket creation to avoid collision."
}
