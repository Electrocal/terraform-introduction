# Resource Blocks and Data Sources

In Terraform, there are two main ways of working with objects: `resource` to create a new object, and `data` sources to retrieve information about existing objects.

To find the full list of all of these and how to use them, just go to: https://registry.terraform.io/browse/providers

## Using Resources

Lets say a provider such as AWS had a resource we could define in Terraform called `resource_name`, we could call that like this:

```json
resource "resource_name" "internal_name" {
    key = "value"
}
```
You can now reference this resource inside Terraform to other blocks and resources using simple dot notation such as: 
`resource_name.internal_name` and its internal values `resource_name.internal_name.key` 

 `internal_name` never leaves Terraform and allows us to internally describe which instance of that resource we mean.

---

## Working with Data Sources

Say that you're now building out some new resources, but now you're working on a new project and can't just reference the identifier to your previous project. Rather than have to go back and figure out a way to export these values (*[cough] fuck CloudFormation [cough]*), we can simply *ask* for them. 

A data source looks pretty similar to a resource, but instead of defining something new we want to build, we give information about something that already exists: 

```json
data "resource_name" "that_thing_I_made" {
    key = value
}
```

We can now reference this for other resources using similar dot notations: 

`data.resource_name.that_thing_I_made.key`

To learn more about Resources and Data sources visit: https://www.terraform.io/docs/language/resources/index.html