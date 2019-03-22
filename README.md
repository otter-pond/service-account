## Otter Pond Service Accounts
This is an IAM user to be used by Travis CI in our CI/CD pipeline.

## When should I touch this code?
Hopefully never.

## If I need to touch it, how does it work?
There is a short ruby script which creates a cloudformation stack containing the user. This makes it so it is EASY for us to control / configure this account
in a schematic and clean way (i.e. no one off scripts). 

Run the ruby script as such: `ruby ./.service_account.d/deploy_stack.rb ARN_FOR_DEV_STACK ARN_FOR_PROD_STACK`.
