// Gitleaks Sample Credentials Test
const AWS_KEY = "AKIALALEMEL33243OLIAE"
const AWS_SECRET = "99432bfewaf823ec3294e231"

const sample_config = {
    "eventVersion": "1.05",
    "userIdentity": {
        "type": "IAMUser",
        "principalId": "AKIAIOSFODNN7EXAMPLE",
        "arn": "arn:aws:iam::123456789012:user/Mary_Major",
        "accountId": "123456789012",
        "userName": "Mary_Major"
    },
    "eventTime": "2019-06-10T17:14:09Z",
    "eventSource": "signin.amazonaws.com",
    "eventName": "ConsoleLogin",
    "awsRegion": "us-east-1",
    "sourceIPAddress": "203.0.113.67",
    "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0",
    "requestParameters": null,
    "responseElements": {
        "ConsoleLogin": "Success"
    },
    "additionalEventData": {
        "LoginTo": "https://console.aws.amazon.com/console/home?state=hashArgs%23&isauthcode=true",
        "MobileVersion": "No",
        "MFAUsed": "No"
    },
    "eventID": "2681fc29-EXAMPLE",
    "eventType": "AwsConsoleSignIn",
    "recipientAccountId": "123456789012"
}

const ACCESS_KEY_ID = '1234567890abcdef1234567890abcdef'
const SECRET_ACCESS_KEY = '1234567890abcdef1234567890abcdef1234567890abcdef'
