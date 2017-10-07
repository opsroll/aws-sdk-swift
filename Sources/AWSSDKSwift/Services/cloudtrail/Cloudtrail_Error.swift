// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import AWSSDKSwiftCore

/// Error enum for Cloudtrail
public enum CloudtrailError: AWSErrorType {
    case trailNotFoundException(message: String?)
    case invalidTrailNameException(message: String?)
    case invalidHomeRegionException(message: String?)
    case resourceNotFoundException(message: String?)
    case cloudTrailARNInvalidException(message: String?)
    case resourceTypeNotSupportedException(message: String?)
    case tagsLimitExceededException(message: String?)
    case invalidTagParameterException(message: String?)
    case unsupportedOperationException(message: String?)
    case operationNotPermittedException(message: String?)
    case invalidTokenException(message: String?)
    case invalidLookupAttributesException(message: String?)
    case invalidTimeRangeException(message: String?)
    case invalidMaxResultsException(message: String?)
    case invalidNextTokenException(message: String?)
    case maximumNumberOfTrailsExceededException(message: String?)
    case trailAlreadyExistsException(message: String?)
    case s3BucketDoesNotExistException(message: String?)
    case insufficientS3BucketPolicyException(message: String?)
    case insufficientSnsTopicPolicyException(message: String?)
    case insufficientEncryptionPolicyException(message: String?)
    case invalidS3BucketNameException(message: String?)
    case invalidS3PrefixException(message: String?)
    case invalidSnsTopicNameException(message: String?)
    case invalidKmsKeyIdException(message: String?)
    case trailNotProvidedException(message: String?)
    case invalidParameterCombinationException(message: String?)
    case kmsKeyNotFoundException(message: String?)
    case kmsKeyDisabledException(message: String?)
    case kmsException(message: String?)
    case invalidCloudWatchLogsLogGroupArnException(message: String?)
    case invalidCloudWatchLogsRoleArnException(message: String?)
    case cloudWatchLogsDeliveryUnavailableException(message: String?)
    case invalidEventSelectorsException(message: String?)
}

extension CloudtrailError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "TrailNotFoundException":
            self = .trailNotFoundException(message: message)
        case "InvalidTrailNameException":
            self = .invalidTrailNameException(message: message)
        case "InvalidHomeRegionException":
            self = .invalidHomeRegionException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "CloudTrailARNInvalidException":
            self = .cloudTrailARNInvalidException(message: message)
        case "ResourceTypeNotSupportedException":
            self = .resourceTypeNotSupportedException(message: message)
        case "TagsLimitExceededException":
            self = .tagsLimitExceededException(message: message)
        case "InvalidTagParameterException":
            self = .invalidTagParameterException(message: message)
        case "UnsupportedOperationException":
            self = .unsupportedOperationException(message: message)
        case "OperationNotPermittedException":
            self = .operationNotPermittedException(message: message)
        case "InvalidTokenException":
            self = .invalidTokenException(message: message)
        case "InvalidLookupAttributesException":
            self = .invalidLookupAttributesException(message: message)
        case "InvalidTimeRangeException":
            self = .invalidTimeRangeException(message: message)
        case "InvalidMaxResultsException":
            self = .invalidMaxResultsException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "MaximumNumberOfTrailsExceededException":
            self = .maximumNumberOfTrailsExceededException(message: message)
        case "TrailAlreadyExistsException":
            self = .trailAlreadyExistsException(message: message)
        case "S3BucketDoesNotExistException":
            self = .s3BucketDoesNotExistException(message: message)
        case "InsufficientS3BucketPolicyException":
            self = .insufficientS3BucketPolicyException(message: message)
        case "InsufficientSnsTopicPolicyException":
            self = .insufficientSnsTopicPolicyException(message: message)
        case "InsufficientEncryptionPolicyException":
            self = .insufficientEncryptionPolicyException(message: message)
        case "InvalidS3BucketNameException":
            self = .invalidS3BucketNameException(message: message)
        case "InvalidS3PrefixException":
            self = .invalidS3PrefixException(message: message)
        case "InvalidSnsTopicNameException":
            self = .invalidSnsTopicNameException(message: message)
        case "InvalidKmsKeyIdException":
            self = .invalidKmsKeyIdException(message: message)
        case "TrailNotProvidedException":
            self = .trailNotProvidedException(message: message)
        case "InvalidParameterCombinationException":
            self = .invalidParameterCombinationException(message: message)
        case "KmsKeyNotFoundException":
            self = .kmsKeyNotFoundException(message: message)
        case "KmsKeyDisabledException":
            self = .kmsKeyDisabledException(message: message)
        case "KmsException":
            self = .kmsException(message: message)
        case "InvalidCloudWatchLogsLogGroupArnException":
            self = .invalidCloudWatchLogsLogGroupArnException(message: message)
        case "InvalidCloudWatchLogsRoleArnException":
            self = .invalidCloudWatchLogsRoleArnException(message: message)
        case "CloudWatchLogsDeliveryUnavailableException":
            self = .cloudWatchLogsDeliveryUnavailableException(message: message)
        case "InvalidEventSelectorsException":
            self = .invalidEventSelectorsException(message: message)
        default:
            return nil
        }
    }
}