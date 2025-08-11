function ecr-login
  aws ecr get-login-password --region us-west-2 --profile devops \
    | docker login \
      --username AWS \
      --password-stdin 837700644609.dkr.ecr.us-west-2.amazonaws.com
end
