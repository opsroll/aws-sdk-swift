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
import Core

extension Shield {

    public enum SubResourceType: String, CustomStringConvertible {
        case ip = "IP"
        case url = "URL"
        public var description: String { return self.rawValue }
    }

    public struct Protection: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "ResourceArn", required: false, type: .string), 
            AWSShapeProperty(label: "Name", required: false, type: .string), 
            AWSShapeProperty(label: "Id", required: false, type: .string)
        ]
        /// The ARN (Amazon Resource Name) of the AWS resource that is protected.
        public let resourceArn: String?
        /// The friendly name of the protection. For example, My CloudFront distributions.
        public let name: String?
        /// The unique identifier (ID) of the protection.
        public let id: String?

        public init(resourceArn: String? = nil, name: String? = nil, id: String? = nil) {
            self.resourceArn = resourceArn
            self.name = name
            self.id = id
        }

        public init(dictionary: [String: Any]) throws {
            self.resourceArn = dictionary["ResourceArn"] as? String
            self.name = dictionary["Name"] as? String
            self.id = dictionary["Id"] as? String
        }
    }

    public struct DeleteSubscriptionRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct AttackSummary: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "StartTime", required: false, type: .timestamp), 
            AWSShapeProperty(label: "EndTime", required: false, type: .timestamp), 
            AWSShapeProperty(label: "ResourceArn", required: false, type: .string), 
            AWSShapeProperty(label: "AttackVectors", required: false, type: .list), 
            AWSShapeProperty(label: "AttackId", required: false, type: .string)
        ]
        /// The start time of the attack, in the format 2016-12-16T13:50Z.
        public let startTime: Date?
        /// The end time of the attack, in the format 2016-12-16T13:50Z.
        public let endTime: Date?
        /// The ARN (Amazon Resource Name) of the resource that was attacked.
        public let resourceArn: String?
        /// The list of attacks for a specified time period.
        public let attackVectors: [AttackVectorDescription]?
        /// The unique identifier (ID) of the attack.
        public let attackId: String?

        public init(startTime: Date? = nil, endTime: Date? = nil, resourceArn: String? = nil, attackVectors: [AttackVectorDescription]? = nil, attackId: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.resourceArn = resourceArn
            self.attackVectors = attackVectors
            self.attackId = attackId
        }

        public init(dictionary: [String: Any]) throws {
            self.startTime = dictionary["StartTime"] as? Date
            self.endTime = dictionary["EndTime"] as? Date
            self.resourceArn = dictionary["ResourceArn"] as? String
            if let attackVectors = dictionary["AttackVectors"] as? [[String: Any]] {
                self.attackVectors = try attackVectors.map({ try AttackVectorDescription(dictionary: $0) })
            } else { 
                self.attackVectors = nil
            }
            self.attackId = dictionary["AttackId"] as? String
        }
    }

    public struct Subscription: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "StartTime", required: false, type: .timestamp), 
            AWSShapeProperty(label: "TimeCommitmentInSeconds", required: false, type: .long)
        ]
        /// The start time of the subscription, in the format "2016-12-16T13:50Z".
        public let startTime: Date?
        /// The length, in seconds, of the AWS Shield Advanced subscription for the account.
        public let timeCommitmentInSeconds: Int64?

        public init(startTime: Date? = nil, timeCommitmentInSeconds: Int64? = nil) {
            self.startTime = startTime
            self.timeCommitmentInSeconds = timeCommitmentInSeconds
        }

        public init(dictionary: [String: Any]) throws {
            self.startTime = dictionary["StartTime"] as? Date
            self.timeCommitmentInSeconds = dictionary["TimeCommitmentInSeconds"] as? Int64
        }
    }

    public struct AttackDetail: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "StartTime", required: false, type: .timestamp), 
            AWSShapeProperty(label: "Mitigations", required: false, type: .list), 
            AWSShapeProperty(label: "ResourceArn", required: false, type: .string), 
            AWSShapeProperty(label: "EndTime", required: false, type: .timestamp), 
            AWSShapeProperty(label: "SubResources", required: false, type: .list), 
            AWSShapeProperty(label: "AttackCounters", required: false, type: .list), 
            AWSShapeProperty(label: "AttackId", required: false, type: .string)
        ]
        /// The time the attack started, in the format 2016-12-16T13:50Z.
        public let startTime: Date?
        /// List of mitigation actions taken for the attack.
        public let mitigations: [Mitigation]?
        /// The ARN (Amazon Resource Name) of the resource that was attacked.
        public let resourceArn: String?
        /// The time the attack ended, in the format 2016-12-16T13:50Z.
        public let endTime: Date?
        /// If applicable, additional detail about the resource being attacked, for example, IP address or URL.
        public let subResources: [SubResourceSummary]?
        /// List of counters that describe the attack for the specified time period.
        public let attackCounters: [SummarizedCounter]?
        /// The unique identifier (ID) of the attack.
        public let attackId: String?

        public init(startTime: Date? = nil, mitigations: [Mitigation]? = nil, resourceArn: String? = nil, endTime: Date? = nil, subResources: [SubResourceSummary]? = nil, attackCounters: [SummarizedCounter]? = nil, attackId: String? = nil) {
            self.startTime = startTime
            self.mitigations = mitigations
            self.resourceArn = resourceArn
            self.endTime = endTime
            self.subResources = subResources
            self.attackCounters = attackCounters
            self.attackId = attackId
        }

        public init(dictionary: [String: Any]) throws {
            self.startTime = dictionary["StartTime"] as? Date
            if let mitigations = dictionary["Mitigations"] as? [[String: Any]] {
                self.mitigations = try mitigations.map({ try Mitigation(dictionary: $0) })
            } else { 
                self.mitigations = nil
            }
            self.resourceArn = dictionary["ResourceArn"] as? String
            self.endTime = dictionary["EndTime"] as? Date
            if let subResources = dictionary["SubResources"] as? [[String: Any]] {
                self.subResources = try subResources.map({ try SubResourceSummary(dictionary: $0) })
            } else { 
                self.subResources = nil
            }
            if let attackCounters = dictionary["AttackCounters"] as? [[String: Any]] {
                self.attackCounters = try attackCounters.map({ try SummarizedCounter(dictionary: $0) })
            } else { 
                self.attackCounters = nil
            }
            self.attackId = dictionary["AttackId"] as? String
        }
    }

    public struct ListAttacksResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "NextToken", required: false, type: .string), 
            AWSShapeProperty(label: "AttackSummaries", required: false, type: .list)
        ]
        /// The token returned by a previous call to indicate that there is more data available. If not null, more results are available. Pass this value for the NextMarker parameter in a subsequent call to ListAttacks to retrieve the next set of items.
        public let nextToken: String?
        /// The attack information for the specified time range.
        public let attackSummaries: [AttackSummary]?

        public init(nextToken: String? = nil, attackSummaries: [AttackSummary]? = nil) {
            self.nextToken = nextToken
            self.attackSummaries = attackSummaries
        }

        public init(dictionary: [String: Any]) throws {
            self.nextToken = dictionary["NextToken"] as? String
            if let attackSummaries = dictionary["AttackSummaries"] as? [[String: Any]] {
                self.attackSummaries = try attackSummaries.map({ try AttackSummary(dictionary: $0) })
            } else { 
                self.attackSummaries = nil
            }
        }
    }

    public struct DescribeAttackResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "Attack", required: false, type: .structure)
        ]
        /// The attack that is described.
        public let attack: AttackDetail?

        public init(attack: AttackDetail? = nil) {
            self.attack = attack
        }

        public init(dictionary: [String: Any]) throws {
            if let attack = dictionary["Attack"] as? [String: Any] { self.attack = try Shield.AttackDetail(dictionary: attack) } else { self.attack = nil }
        }
    }

    public struct ListProtectionsResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "NextToken", required: false, type: .string), 
            AWSShapeProperty(label: "Protections", required: false, type: .list)
        ]
        /// If you specify a value for MaxResults and you have more Protections than the value of MaxResults, AWS Shield Advanced returns a NextToken value in the response that allows you to list another group of Protections. For the second and subsequent ListProtections requests, specify the value of NextToken from the previous response to get information about another batch of Protections.
        public let nextToken: String?
        /// The array of enabled Protection objects.
        public let protections: [Protection]?

        public init(nextToken: String? = nil, protections: [Protection]? = nil) {
            self.nextToken = nextToken
            self.protections = protections
        }

        public init(dictionary: [String: Any]) throws {
            self.nextToken = dictionary["NextToken"] as? String
            if let protections = dictionary["Protections"] as? [[String: Any]] {
                self.protections = try protections.map({ try Protection(dictionary: $0) })
            } else { 
                self.protections = nil
            }
        }
    }

    public struct SummarizedCounter: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "Unit", required: false, type: .string), 
            AWSShapeProperty(label: "Average", required: false, type: .double), 
            AWSShapeProperty(label: "N", required: false, type: .integer), 
            AWSShapeProperty(label: "Max", required: false, type: .double), 
            AWSShapeProperty(label: "Name", required: false, type: .string), 
            AWSShapeProperty(label: "Sum", required: false, type: .double)
        ]
        /// The unit of the counters.
        public let unit: String?
        /// The average value of the counter for a specified time period.
        public let average: Double?
        /// The number of counters for a specified time period.
        public let n: Int32?
        /// The maximum value of the counter for a specified time period.
        public let max: Double?
        /// The counter name.
        public let name: String?
        /// The total of counter values for a specified time period.
        public let sum: Double?

        public init(unit: String? = nil, average: Double? = nil, n: Int32? = nil, max: Double? = nil, name: String? = nil, sum: Double? = nil) {
            self.unit = unit
            self.average = average
            self.n = n
            self.max = max
            self.name = name
            self.sum = sum
        }

        public init(dictionary: [String: Any]) throws {
            self.unit = dictionary["Unit"] as? String
            self.average = dictionary["Average"] as? Double
            self.n = dictionary["N"] as? Int32
            self.max = dictionary["Max"] as? Double
            self.name = dictionary["Name"] as? String
            self.sum = dictionary["Sum"] as? Double
        }
    }

    public struct CreateProtectionRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "Name", required: true, type: .string), 
            AWSShapeProperty(label: "ResourceArn", required: true, type: .string)
        ]
        /// Friendly name for the Protection you are creating.
        public let name: String
        /// The ARN (Amazon Resource Name) of the resource to be protected.
        public let resourceArn: String

        public init(name: String, resourceArn: String) {
            self.name = name
            self.resourceArn = resourceArn
        }

        public init(dictionary: [String: Any]) throws {
            guard let name = dictionary["Name"] as? String else { throw InitializableError.missingRequiredParam("Name") }
            self.name = name
            guard let resourceArn = dictionary["ResourceArn"] as? String else { throw InitializableError.missingRequiredParam("ResourceArn") }
            self.resourceArn = resourceArn
        }
    }

    public struct DescribeProtectionRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "ProtectionId", required: true, type: .string)
        ]
        /// The unique identifier (ID) for the Protection object that is described.
        public let protectionId: String

        public init(protectionId: String) {
            self.protectionId = protectionId
        }

        public init(dictionary: [String: Any]) throws {
            guard let protectionId = dictionary["ProtectionId"] as? String else { throw InitializableError.missingRequiredParam("ProtectionId") }
            self.protectionId = protectionId
        }
    }

    public struct DescribeAttackRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "AttackId", required: true, type: .string)
        ]
        /// The unique identifier (ID) for the attack that to be described.
        public let attackId: String

        public init(attackId: String) {
            self.attackId = attackId
        }

        public init(dictionary: [String: Any]) throws {
            guard let attackId = dictionary["AttackId"] as? String else { throw InitializableError.missingRequiredParam("AttackId") }
            self.attackId = attackId
        }
    }

    public struct DescribeProtectionResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "Protection", required: false, type: .structure)
        ]
        /// The Protection object that is described.
        public let protection: Protection?

        public init(protection: Protection? = nil) {
            self.protection = protection
        }

        public init(dictionary: [String: Any]) throws {
            if let protection = dictionary["Protection"] as? [String: Any] { self.protection = try Shield.Protection(dictionary: protection) } else { self.protection = nil }
        }
    }

    public struct DeleteProtectionRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "ProtectionId", required: true, type: .string)
        ]
        /// The unique identifier (ID) for the Protection object to be deleted.
        public let protectionId: String

        public init(protectionId: String) {
            self.protectionId = protectionId
        }

        public init(dictionary: [String: Any]) throws {
            guard let protectionId = dictionary["ProtectionId"] as? String else { throw InitializableError.missingRequiredParam("ProtectionId") }
            self.protectionId = protectionId
        }
    }

    public struct DeleteSubscriptionResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct TimeRange: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "ToExclusive", required: false, type: .timestamp), 
            AWSShapeProperty(label: "FromInclusive", required: false, type: .timestamp)
        ]
        /// The end time, in the format 2016-12-16T15:50Z.
        public let toExclusive: Date?
        /// The start time, in the format 2016-12-16T13:50Z.
        public let fromInclusive: Date?

        public init(toExclusive: Date? = nil, fromInclusive: Date? = nil) {
            self.toExclusive = toExclusive
            self.fromInclusive = fromInclusive
        }

        public init(dictionary: [String: Any]) throws {
            self.toExclusive = dictionary["ToExclusive"] as? Date
            self.fromInclusive = dictionary["FromInclusive"] as? Date
        }
    }

    public struct CreateSubscriptionResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct CreateProtectionResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "ProtectionId", required: false, type: .string)
        ]
        /// The unique identifier (ID) for the Protection object that is created.
        public let protectionId: String?

        public init(protectionId: String? = nil) {
            self.protectionId = protectionId
        }

        public init(dictionary: [String: Any]) throws {
            self.protectionId = dictionary["ProtectionId"] as? String
        }
    }

    public struct SummarizedAttackVector: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "VectorCounters", required: false, type: .list), 
            AWSShapeProperty(label: "VectorType", required: true, type: .string)
        ]
        /// The list of counters that describe the details of the attack.
        public let vectorCounters: [SummarizedCounter]?
        /// The attack type, for example, SNMP reflection or SYN flood.
        public let vectorType: String

        public init(vectorCounters: [SummarizedCounter]? = nil, vectorType: String) {
            self.vectorCounters = vectorCounters
            self.vectorType = vectorType
        }

        public init(dictionary: [String: Any]) throws {
            if let vectorCounters = dictionary["VectorCounters"] as? [[String: Any]] {
                self.vectorCounters = try vectorCounters.map({ try SummarizedCounter(dictionary: $0) })
            } else { 
                self.vectorCounters = nil
            }
            guard let vectorType = dictionary["VectorType"] as? String else { throw InitializableError.missingRequiredParam("VectorType") }
            self.vectorType = vectorType
        }
    }

    public struct Mitigation: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "MitigationName", required: false, type: .string)
        ]
        /// The name of the mitigation taken for this attack.
        public let mitigationName: String?

        public init(mitigationName: String? = nil) {
            self.mitigationName = mitigationName
        }

        public init(dictionary: [String: Any]) throws {
            self.mitigationName = dictionary["MitigationName"] as? String
        }
    }

    public struct DescribeSubscriptionResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "Subscription", required: false, type: .structure)
        ]
        /// The AWS Shield Advanced subscription details for an account.
        public let subscription: Subscription?

        public init(subscription: Subscription? = nil) {
            self.subscription = subscription
        }

        public init(dictionary: [String: Any]) throws {
            if let subscription = dictionary["Subscription"] as? [String: Any] { self.subscription = try Shield.Subscription(dictionary: subscription) } else { self.subscription = nil }
        }
    }

    public struct CreateSubscriptionRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct ListAttacksRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "StartTime", required: false, type: .structure), 
            AWSShapeProperty(label: "ResourceArns", required: false, type: .list), 
            AWSShapeProperty(label: "EndTime", required: false, type: .structure), 
            AWSShapeProperty(label: "NextToken", required: false, type: .string), 
            AWSShapeProperty(label: "MaxResults", required: false, type: .integer)
        ]
        /// The time period for the attacks.
        public let startTime: TimeRange?
        /// The ARN (Amazon Resource Name) of the resource that was attacked. If this is left blank, all applicable resources for this account will be included.
        public let resourceArns: [String]?
        /// The end of the time period for the attacks.
        public let endTime: TimeRange?
        /// The ListAttacksRequest.NextMarker value from a previous call to ListAttacksRequest. Pass null if this is the first call.
        public let nextToken: String?
        /// The maximum number of AttackSummary objects to be returned. If this is left blank, the first 20 results will be returned.
        public let maxResults: Int32?

        public init(startTime: TimeRange? = nil, resourceArns: [String]? = nil, endTime: TimeRange? = nil, nextToken: String? = nil, maxResults: Int32? = nil) {
            self.startTime = startTime
            self.resourceArns = resourceArns
            self.endTime = endTime
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

        public init(dictionary: [String: Any]) throws {
            if let startTime = dictionary["StartTime"] as? [String: Any] { self.startTime = try Shield.TimeRange(dictionary: startTime) } else { self.startTime = nil }
            self.resourceArns = dictionary["ResourceArns"] as? [String]
            if let endTime = dictionary["EndTime"] as? [String: Any] { self.endTime = try Shield.TimeRange(dictionary: endTime) } else { self.endTime = nil }
            self.nextToken = dictionary["NextToken"] as? String
            self.maxResults = dictionary["MaxResults"] as? Int32
        }
    }

    public struct AttackVectorDescription: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "VectorType", required: true, type: .string)
        ]
        /// The attack type, for example, SNMP reflection or SYN flood.
        public let vectorType: String

        public init(vectorType: String) {
            self.vectorType = vectorType
        }

        public init(dictionary: [String: Any]) throws {
            guard let vectorType = dictionary["VectorType"] as? String else { throw InitializableError.missingRequiredParam("VectorType") }
            self.vectorType = vectorType
        }
    }

    public struct SubResourceSummary: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "Counters", required: false, type: .list), 
            AWSShapeProperty(label: "Type", required: false, type: .enum), 
            AWSShapeProperty(label: "AttackVectors", required: false, type: .list), 
            AWSShapeProperty(label: "Id", required: false, type: .string)
        ]
        /// The counters that describe the details of the attack.
        public let counters: [SummarizedCounter]?
        /// The SubResource type.
        public let `type`: SubResourceType?
        /// The list of attack types and associated counters.
        public let attackVectors: [SummarizedAttackVector]?
        /// The unique identifier (ID) of the SubResource.
        public let id: String?

        public init(counters: [SummarizedCounter]? = nil, type: SubResourceType? = nil, attackVectors: [SummarizedAttackVector]? = nil, id: String? = nil) {
            self.counters = counters
            self.`type` = `type`
            self.attackVectors = attackVectors
            self.id = id
        }

        public init(dictionary: [String: Any]) throws {
            if let counters = dictionary["Counters"] as? [[String: Any]] {
                self.counters = try counters.map({ try SummarizedCounter(dictionary: $0) })
            } else { 
                self.counters = nil
            }
            if let `type` = dictionary["Type"] as? String { self.`type` = SubResourceType(rawValue: `type`) } else { self.`type` = nil }
            if let attackVectors = dictionary["AttackVectors"] as? [[String: Any]] {
                self.attackVectors = try attackVectors.map({ try SummarizedAttackVector(dictionary: $0) })
            } else { 
                self.attackVectors = nil
            }
            self.id = dictionary["Id"] as? String
        }
    }

    public struct ListProtectionsRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "NextToken", required: false, type: .string), 
            AWSShapeProperty(label: "MaxResults", required: false, type: .integer)
        ]
        /// The ListProtectionsRequest.NextToken value from a previous call to ListProtections. Pass null if this is the first call.
        public let nextToken: String?
        /// The maximum number of Protection objects to be returned. If this is left blank the first 20 results will be returned.
        public let maxResults: Int32?

        public init(nextToken: String? = nil, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

        public init(dictionary: [String: Any]) throws {
            self.nextToken = dictionary["NextToken"] as? String
            self.maxResults = dictionary["MaxResults"] as? Int32
        }
    }

    public struct DescribeSubscriptionRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct DeleteProtectionResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil

        public init(dictionary: [String: Any]) throws {
        }
    }

}