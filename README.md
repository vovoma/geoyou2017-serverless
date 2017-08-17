## Lambda function example using serverless

The following steps assume you already have an [AWS account setup](https://aws.amazon.com/free/) and [awscli](https://aws.amazon.com/cli/) installed and [default profile](http://docs.aws.amazon.com/cli/latest/userguide/cli-multiple-profiles.html) has been created.

## Setup

```bash
npm install -g serverless
npm install
serverless deploy -v
```

Run it:

```
serverless invoke -f buffer --path example.json

# Alternatively, you can also use the API endpoint over HTTPS
curl https://<api-gateway-url>/dev/buffer -X POST -d "{\"x\":-90.2,\"y\":38.63}"
```

_NOTE: In order to run the `show.sh` script, you'll need your mapbox access token in the `.token` file._
