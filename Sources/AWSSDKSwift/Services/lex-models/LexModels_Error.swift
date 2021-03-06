// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for LexModels
public enum LexModelsError: AWSErrorType {
    case notFoundException(message: String?)
    case limitExceededException(message: String?)
    case internalFailureException(message: String?)
    case badRequestException(message: String?)
    case conflictException(message: String?)
    case resourceInUseException(message: String?)
    case preconditionFailedException(message: String?)
}

extension LexModelsError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "PreconditionFailedException":
            self = .preconditionFailedException(message: message)
        default:
            return nil
        }
    }
}