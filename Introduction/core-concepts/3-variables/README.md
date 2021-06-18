# Variables, data types, and references in Terraform

## Data types

Wow back to basics huh? Well, yes. Terraform has a few kinds of types & values. It's important to get them right now before we progress further.

`string` : "I am an example of a string. basically just any word, wrap me in double quotes"

`bool` : `true`, or `false`

`number` : `100`, or `10.0`. No int vs float here


`list` (or `tuple`) : `["thing", "other-thing", 100, data.thing]`

`map` (or `object`) : `{tool = "terraform", version = 1.0.0}`

`null`: nothin' at all

For a better explanation, go to: https://www.terraform.io/docs/language/expressions/types.html


## Variables

//TODO
A variable, in essence, is just a place to store something.

Say for example that you have 

Another kind of variable is a `local`


## Referencing

You may have noticed in the previous example - when we wanted to call the data source into our new resource block, we had a bunch of words joined by dots. 

```json
resource "aws_instance" "ubuntu" {
  ami = data.aws_ami.ubuntu.id # <- This here
 ...
```

In older versions of Terraform (> 12) you needed to format these kinds of references like this `"${data.aws_ami.ubuntu.id}"`. So if you see this around in older code repos and examples, don't panic, it's just old.
Wow, am I glad we don't have to do that crap anymore.

