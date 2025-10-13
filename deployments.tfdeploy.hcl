# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "development" {
  inputs = {
    regions        = ["ap-northeast-2"]
    # role_arn       = "<YOUR_ROLE_ARN>"
    # identity_token = identity_token.aws.jwt
    default_tags = {
      Stack       = "learn-stacks-deploy-aws",
      Environment = "dev"
    }
  }
}

deployment "production" {
  inputs = {
    regions        = ["ap-northeast-2", "ap-northeast-1"]
    # role_arn       = "<YOUR_ROLE_ARN>"
    # identity_token = identity_token.aws.jwt
    default_tags = {
      Stack       = "learn-stacks-deploy-aws",
      Environment = "prod"
    }
  }
}
