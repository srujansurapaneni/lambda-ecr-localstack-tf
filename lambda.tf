resource "aws_iam_role" "iam_for_lambda" {
  name               = "iam_for_lambda"
  assume_role_policy = <<EOF
    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Action": "sts.AssumeRole",
                "Principal": {
                    "Service": "lambda.amazonaws.com"
                },
                "Effect": "Allow",
                "Sid": ""
            }
        ]
    }
EOF
}

resource "aws_lambda_function" "lambda-container" {
  function_name = "lambda-container"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "lambda.lambdaHandler"
  runtime       = "nodejs12.x"
  timeout       = 60
  image_uri     = "localhost:4510/lambda-container:latest"
  package_type  = "Image"
}
