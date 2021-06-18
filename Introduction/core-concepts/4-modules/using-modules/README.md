# Modules. What are they and why do I want them?

A module is essentially a collection of everything we just learned that has been mashed into one template.
If you're familiar with object oriented programming, you can think of these as like a class. You supply just a few parameters to the constructor and it will return you a unique instance of the desired object.

A less fancy computery way of saying that is that this is basically a template, like a cake mould. Same shape and characteristics with minimal effort, but I can throw fruit and shit in it if I want.

Thanks to modules, we're able to create large portions infrastructure all at once without all the legwork of figuring out what resources would usually go into it.

## Using Modules

You can browse here to see the full range of modules: https://registry.terraform.io/browse/modules 
This vast collection allows us to build some amazing things with ease.

For example, to create an entire managed Kubernetes (EKS) cluster with just this:

```json
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "17.1.0"
  # insert the 9 required variables here
}
```

To learn more about modules visit: https://www.terraform.io/docs/language/modules/syntax.html