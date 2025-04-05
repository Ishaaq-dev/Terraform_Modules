module "policy_test" {
  source = "./iam_policy"

  policy_name = "test_policy"
  policy_path = "/"
  policy_description = "a test to see if the tf module works"
  policy_statements = [
    {
      actions   = ["ec2:Describe*"]
      effect    = "Allow"
      resources = ["*"]
    },
    {
      actions   = ["s3:ListBucket"]
      effect    = "Allow"
      resources = ["arn:aws:s3:::my-bucket"]
    },
    {
      actions: [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents"
      ],
      effect: "Allow",
      resources: ["*"]
    }
  ]
}

module "role_test" {
  source = "./iam_role"

  role_name = "test_role"
  assume_role_statements = [
    {
      actions    = ["sts:AssumeRole"]
      effect     = "Allow"
      principals = {
        Service = ["lambda.amazonaws.com", "ec2.amazonaws.com"]
      }
    }
  ]

  policy_arns = [
    module.policy_test.policy_arn
  ]
}

module "lambda_function" {
  source            = "./lambda"

  lambda_name       = "test_lambda"
  role_arn          = module.role_test.role_arn
  function_handler  = "index.handler"
  source_code_path     = "./src"
}

module "api_gateway" {
  source = "./api_gateway"

  api_name = "test_api"
  api_description = "a test api"
}

module "get_test_method" {
  source             = "./api_gateway_resource"
  api_id             = module.api_gateway.api_id
  parent_resource_id = module.api_gateway.root_resource_id
  resource_path      = "test"
  http_method        = "GET"
  lambda_invoke_arn  = module.lambda_function.lambda_invoke_arn
}

module "api_stage" {
  source              = "./api_gateway_stage"

  api_id              = module.api_gateway.api_id
  stage_name          = "test"
  deployment_trigger  = sha1(jsonencode(module.api_gateway.body)) # or something else to trigger redeployment
  region = "eu-west-1"

  depends_on = [module.get_test_method]
}
