An Introduction to Terraform 


#Basics
    Structure of Terraform is called HCL - HashiCorp Configuration Language (HCL)
    Declartive -> Human Readable and Machine friendly too.
    terraform also understands human readable format too.

#Langauage Fundamentals
1. Comments  -> #
2. Muti Line Comments ->
3. Assign Syntax -> key = value
4. String -> "" note not single ''
5. `here doc` Syntax e.g << EOF
6. Boolean values -> true /false
7. list  -> []
8. maps -> {}
9. Advantages -> HCL and JSON or interoperable.
10. Disadvantages -> less readable comments.


**CLI and Common Executions**

1. Basic Principles of Terraform CLI's

2. Terraform plan with out is best choice
terraform plan -out=path  -> also destory-plan
a. Refresh -> Refresh (Gets the delta) gets the state
b. show -> shows the state in human readable format
c. validate -> Typo corrections like compiler

#Resources

Actual infrastructure components E.g. Machine or service anything we produce to cloud.
 Can be -> _**Low level**_ or **_High level**_ E.g. physical server(LR) or Email Server DNS(HR).

**Meta-parameters** are available to all resources.
1. count
2. depends_on


**Life Cycle**

1. create_before_destroy - create new infra resource before old being destroyed.
2. prevent_destroy - avoids deletion of resources


**Timeout**
1. create - threshold, to create an resource, raise an error 
2. delete - threshold, if not done within specified time destroy the resource.



#Providers

 They manage the life cycle of resources : create read update and delete.
 
 
`provider <provider_name> {properties} `

providers are genarally from Iaas or Saas

About 71 providers -> E.g AWS, AZURE, KUBERNETES 

terraform init - downloads all provider required softwares


aws region with alias name.

# Variables

Variables serve as parameters for terraform modules.

`variable <variable_name> {
  type = <String | Map| LIST 
  default = <default value> 
  description = details on the var
 }`


_Providing variables_

1. seperate tf file
2. TF_VAR external via cli
3. Seperate file and pass through cli


#Outputting Attributes

Tells what data is imp and provides that to user

outputted post apply also can fetched by terraform output

output parameters include value, description depends_on sensitive


#Advanced Topics

##Interpolation Expressions

**_what they are ?_**
 expressions are spl values within terraform strings.
 Syntax : 
 1. `${var.foo}`
 2. List depends on : `type.name.attribute`  Note : splat syntax (`res.*.ids`)
 3. Conditionals: `${var.something ? 1 :0 }`
 4. Concat - Built In functions `concat(aws_instance.db, aws_....)`
 5. join
 6. contains
 7. merge
 8. length
 9. replace

**_terraform console cmd_**
-> math operations

-> console executions

`terraform console`







