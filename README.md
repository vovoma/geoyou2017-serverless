## Lambda function example using serverless

The following steps assume you already have an AWS account setup and awscli installed and default profile has been setup.

<http://docs.aws.amazon.com/cli/latest/userguide/cli-multiple-profiles.html>

## Setup

```bash
npm install -g serverless
npm install
serverless deploy -v
```

Run it:

```
serverless invoke -f buffer --path example.json
```

_NOTE: Also, in order to run the `show.sh` command, you'll need your mapbox access token in `.token`._
