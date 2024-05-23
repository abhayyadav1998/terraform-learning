variable "sample" {
    default = "Hello world"
  
}

#both the syntax output is valid

output "sample-op"{
    value = var.sample
}

output "sample-op2"{
    value = "value is ${var.sample}"
}

variable "number" {
    default = 100
  
}
  output "number" {
    value = var.number
    
  }
  
 variable "example-list" {
    default = [
        "Devops",
        1000,
        true,
        "Abhay"
    ]
   
 }

output "example-list" {
    value = var.example-list
  
}
  
variable "example-map" {
    default = {
        class = "Abhay",
        name = "Yadav",
        Duration = 8
    }
  
}


output "example-map" {
    value = var.example-map
  
}

variable "city" {
  
}
output "city-name" {
    value = var.city
  
}


variable "state" {}
  output "state-name" {
    value = var.state
  }



