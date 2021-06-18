# A simple variable needs to be defined like this. This could be called as var.example
variable "example" {
  type    = string
  default = "i'm an example"
}

# and we can have objects / maps of variables like this! these can be called like var.condiment.ketchup
variable "condiment" {
  type = map({
    mayonnaise = bool
    mustard    = bool
    ketchup    = bool
    relish     = bool
  })

  default = {
    mayonnaise = true
    mustard    = false
    ketchup    = true
    relish     = false
  }
}