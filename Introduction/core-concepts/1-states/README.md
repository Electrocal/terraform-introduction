# Terraform States

To get started, open the `local-state` folder and take a look at `main.tf`. Change the name of the bucket to something unique just for you to use.
Now, run these commands: 

`terraform init`

`terraform apply`

at the prompt, have a look what Terraform plans to build out (a single s3 bucket), if this looks good to you, just type `yes` and press return.

In Terraform, you're able to build, modify, and destroy infrastructure at an incredibly rapid speed. The only reason you're able to modify or remove something thats been designed in Terraform is thanks to the `state` file - A permanent store of what has been built. Try to think of it as the blueprint of whats been done to get this far. 

If you're curious about how Terraform stores this data, just take a look after your first `apply`, your state is human readable and **stores everything in plain text**.

To keep these files safe, and even let multiple people work on the same project, its possible to store the state remotely. Take a look at `remote-state` to see how to do this in S3.

To learn a lot more about Terraform states: https://www.terraform.io/docs/language/state/index.html