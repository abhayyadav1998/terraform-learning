Variable - Data Type

Terraform supports data types and those are

1. Strings
2. Numbers
3. Booleans

1. String data should be quated in double-quates, But where as numbers and booleans need not to be

# String data types

variable "sample1" {
    default = "Hello world"
  
}
# Number data types
variable "sample2" {
    default = 100
}
# Boolean data type
variable "sample3" {
    default = true
  
}

2. terraform only supports double quotes not single quotes.

# Default variable type

variable "sample" {
    default = "hello world"
}

# List variable type
variable "sample" {

    default = ["Hello", 1000, true, "world"]

}

#  Map variable type

variable "sample" {
    
    default = {
        
    string = "Hello",
    number = 1000, 
   boolean = true, 
   string = "world"
    }
}

# terraform supports diffrent data types in a single list or map variable need not to be same data type


variable "sample"{}


-------------variable precedence order--------------------->

[-var , -var-file]  , [*.auto.tfvars] , [terraform.tfvars], [ Shell ENV]

to decale Shell Env synatax

export TF_VAR_city=Mumbai
