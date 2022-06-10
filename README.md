# AWS EC2 instance

## Description
This module provides an EC2 instance resource. Amazon Elastic Compute Cloud (Amazon EC2) provides scalable computing capacity in the Amazon Web Services (AWS) Cloud.

## Requirements
These are the requirements for this module.

|    | Terraform |
|:--:|-----------|
| >= |   1.0.11   |

|    |    AWS    |
|:--:|-----------|
| >= |  4.15.1   |

## Usage

```hcl
module "ec2_instance" {
  source  = "github.com/flugel-it/workshop-2-terraform-module/module"

  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"

  tags = {
   Name = "HelloWorld"
  }
}
```

## Parameters or Configuration

In the `variables.tf` file we can declare:

|               | Default Value |     Type    |                    Description                    |
|:-------------:|:-------------:|:-----------:|:-------------------------------------------------:|
|     **region**    |       us-east-1      |    string   |  AWS region.  |
|     **ami**    |       ""      |    map   |  AMIS for different regions.  |
|     **instance_type**    |       ""      |    string   |  The instance type to use for the instance.  |
|     **tags**    |       ""      |    map   |  A map of tags to assign to the resource.  |


## Testing

In order to test this repository you must first install all dependencies:

``` 
cd test
go get -v -d -t ./... 
```

Then, you can execute the tests, from inside the `test` folder:

```
go test -v -timeout 10m
```
