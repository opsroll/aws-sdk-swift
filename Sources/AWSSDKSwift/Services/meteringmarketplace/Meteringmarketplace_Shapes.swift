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

import Foundation
import AWSSDKSwiftCore

extension Meteringmarketplace {

    public struct UsageRecord: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "CustomerIdentifier", required: true, type: .string), 
            AWSShapeMember(label: "Timestamp", required: true, type: .timestamp), 
            AWSShapeMember(label: "Dimension", required: true, type: .string), 
            AWSShapeMember(label: "Quantity", required: true, type: .integer)
        ]
        /// The CustomerIdentifier is obtained through the ResolveCustomer operation and represents an individual buyer in your application.
        public let customerIdentifier: String
        /// Timestamp of the hour, recorded in UTC. The seconds and milliseconds portions of the timestamp will be ignored. Your application can meter usage for up to one hour in the past.
        public let timestamp: Double
        /// During the process of registering a product on AWS Marketplace, up to eight dimensions are specified. These represent different units of value in your application.
        public let dimension: String
        /// The quantity of usage consumed by the customer for the given dimension and time.
        public let quantity: Int32

        public init(customerIdentifier: String, timestamp: Double, dimension: String, quantity: Int32) {
            self.customerIdentifier = customerIdentifier
            self.timestamp = timestamp
            self.dimension = dimension
            self.quantity = quantity
        }

        private enum CodingKeys: String, CodingKey {
            case customerIdentifier = "CustomerIdentifier"
            case timestamp = "Timestamp"
            case dimension = "Dimension"
            case quantity = "Quantity"
        }
    }

    public struct ResolveCustomerRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "RegistrationToken", required: true, type: .string)
        ]
        /// When a buyer visits your website during the registration process, the buyer submits a registration token through the browser. The registration token is resolved to obtain a CustomerIdentifier and product code.
        public let registrationToken: String

        public init(registrationToken: String) {
            self.registrationToken = registrationToken
        }

        private enum CodingKeys: String, CodingKey {
            case registrationToken = "RegistrationToken"
        }
    }

    public struct MeterUsageRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Timestamp", required: true, type: .timestamp), 
            AWSShapeMember(label: "DryRun", required: true, type: .boolean), 
            AWSShapeMember(label: "UsageDimension", required: true, type: .string), 
            AWSShapeMember(label: "UsageQuantity", required: true, type: .integer), 
            AWSShapeMember(label: "ProductCode", required: true, type: .string)
        ]
        /// Timestamp of the hour, recorded in UTC. The seconds and milliseconds portions of the timestamp will be ignored.
        public let timestamp: Double
        /// Checks whether you have the permissions required for the action, but does not make the request. If you have the permissions, the request returns DryRunOperation; otherwise, it returns UnauthorizedException.
        public let dryRun: Bool
        /// It will be one of the fcp dimension name provided during the publishing of the product.
        public let usageDimension: String
        /// Consumption value for the hour.
        public let usageQuantity: Int32
        /// Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.
        public let productCode: String

        public init(timestamp: Double, dryRun: Bool, usageDimension: String, usageQuantity: Int32, productCode: String) {
            self.timestamp = timestamp
            self.dryRun = dryRun
            self.usageDimension = usageDimension
            self.usageQuantity = usageQuantity
            self.productCode = productCode
        }

        private enum CodingKeys: String, CodingKey {
            case timestamp = "Timestamp"
            case dryRun = "DryRun"
            case usageDimension = "UsageDimension"
            case usageQuantity = "UsageQuantity"
            case productCode = "ProductCode"
        }
    }

    public enum UsageRecordResultStatus: String, CustomStringConvertible, Codable {
        case success = "Success"
        case customernotsubscribed = "CustomerNotSubscribed"
        case duplicaterecord = "DuplicateRecord"
        public var description: String { return self.rawValue }
    }

    public struct BatchMeterUsageResult: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "UnprocessedRecords", required: false, type: .list), 
            AWSShapeMember(label: "Results", required: false, type: .list)
        ]
        /// Contains all UsageRecords that were not processed by BatchMeterUsage. This is a list of UsageRecords. You can retry the failed request by making another BatchMeterUsage call with this list as input in the BatchMeterUsageRequest.
        public let unprocessedRecords: [UsageRecord]?
        /// Contains all UsageRecords processed by BatchMeterUsage. These records were either honored by AWS Marketplace Metering Service or were invalid.
        public let results: [UsageRecordResult]?

        public init(unprocessedRecords: [UsageRecord]? = nil, results: [UsageRecordResult]? = nil) {
            self.unprocessedRecords = unprocessedRecords
            self.results = results
        }

        private enum CodingKeys: String, CodingKey {
            case unprocessedRecords = "UnprocessedRecords"
            case results = "Results"
        }
    }

    public struct ResolveCustomerResult: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "CustomerIdentifier", required: false, type: .string), 
            AWSShapeMember(label: "ProductCode", required: false, type: .string)
        ]
        /// The CustomerIdentifier is used to identify an individual customer in your application. Calls to BatchMeterUsage require CustomerIdentifiers for each UsageRecord.
        public let customerIdentifier: String?
        /// The product code is returned to confirm that the buyer is registering for your product. Subsequent BatchMeterUsage calls should be made using this product code.
        public let productCode: String?

        public init(customerIdentifier: String? = nil, productCode: String? = nil) {
            self.customerIdentifier = customerIdentifier
            self.productCode = productCode
        }

        private enum CodingKeys: String, CodingKey {
            case customerIdentifier = "CustomerIdentifier"
            case productCode = "ProductCode"
        }
    }

    public struct MeterUsageResult: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "MeteringRecordId", required: false, type: .string)
        ]
        public let meteringRecordId: String?

        public init(meteringRecordId: String? = nil) {
            self.meteringRecordId = meteringRecordId
        }

        private enum CodingKeys: String, CodingKey {
            case meteringRecordId = "MeteringRecordId"
        }
    }

    public struct BatchMeterUsageRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProductCode", required: true, type: .string), 
            AWSShapeMember(label: "UsageRecords", required: true, type: .list)
        ]
        /// Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.
        public let productCode: String
        /// The set of UsageRecords to submit. BatchMeterUsage accepts up to 25 UsageRecords at a time.
        public let usageRecords: [UsageRecord]

        public init(productCode: String, usageRecords: [UsageRecord]) {
            self.productCode = productCode
            self.usageRecords = usageRecords
        }

        private enum CodingKeys: String, CodingKey {
            case productCode = "ProductCode"
            case usageRecords = "UsageRecords"
        }
    }

    public struct UsageRecordResult: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "MeteringRecordId", required: false, type: .string), 
            AWSShapeMember(label: "Status", required: false, type: .enum), 
            AWSShapeMember(label: "UsageRecord", required: false, type: .structure)
        ]
        /// The MeteringRecordId is a unique identifier for this metering event.
        public let meteringRecordId: String?
        /// The UsageRecordResult Status indicates the status of an individual UsageRecord processed by BatchMeterUsage.    Success- The UsageRecord was accepted and honored by BatchMeterUsage.    CustomerNotSubscribed- The CustomerIdentifier specified is not subscribed to your product. The UsageRecord was not honored. Future UsageRecords for this customer will fail until the customer subscribes to your product.    DuplicateRecord- Indicates that the UsageRecord was invalid and not honored. A previously metered UsageRecord had the same customer, dimension, and time, but a different quantity.  
        public let status: UsageRecordResultStatus?
        /// The UsageRecord that was part of the BatchMeterUsage request.
        public let usageRecord: UsageRecord?

        public init(meteringRecordId: String? = nil, status: UsageRecordResultStatus? = nil, usageRecord: UsageRecord? = nil) {
            self.meteringRecordId = meteringRecordId
            self.status = status
            self.usageRecord = usageRecord
        }

        private enum CodingKeys: String, CodingKey {
            case meteringRecordId = "MeteringRecordId"
            case status = "Status"
            case usageRecord = "UsageRecord"
        }
    }

}