SERVICE_NAME="otter-pond" # Customize this to your services name
puts ARGV[0]
STACK_NAME="#{SERVICE_NAME}-service-account-prod"
puts `aws cloudformation deploy \
  --template-file .service_account.d/service_account_cfm.json \
  --stack-name otter-pond-service-account-prod \
  --parameter-overrides devStackARN="#{ARGV[0]}" prodStackARN="#{ARGV[1]}" \
  --capabilities CAPABILITY_NAMED_IAM`
