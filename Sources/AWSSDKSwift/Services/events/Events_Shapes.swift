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

extension Events {

    public struct PutPermissionRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Principal", required: true, type: .string), 
            AWSShapeMember(label: "Action", required: true, type: .string), 
            AWSShapeMember(label: "StatementId", required: true, type: .string)
        ]
        /// The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify "*" to permit any account to put events to your default event bus. If you specify "*", avoid creating rules that may match undesirable events. To create more secure rules, make sure that the event pattern for each rule contains an account field with a specific account ID from which to receive events. Rules with an account field do not match any events sent from other accounts.
        public let principal: String
        /// The action that you are enabling the other account to perform. Currently, this must be events:PutEvents.
        public let action: String
        /// An identifier string for the external account that you are granting permissions to. If you later want to revoke the permission for this external account, specify this StatementId when you run RemovePermission.
        public let statementId: String

        public init(principal: String, action: String, statementId: String) {
            self.principal = principal
            self.action = action
            self.statementId = statementId
        }

        private enum CodingKeys: String, CodingKey {
            case principal = "Principal"
            case action = "Action"
            case statementId = "StatementId"
        }
    }

    public struct InputTransformer: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "InputTemplate", required: true, type: .string), 
            AWSShapeMember(label: "InputPathsMap", required: false, type: .map)
        ]
        /// Input template where you can use the values of the keys from InputPathsMap to customize the data sent to the target.
        public let inputTemplate: String
        /// Map of JSON paths to be extracted from the event. These are key-value pairs, where each value is a JSON path. You must use JSON dot notation, not bracket notation.
        public let inputPathsMap: [String: String]?

        public init(inputTemplate: String, inputPathsMap: [String: String]? = nil) {
            self.inputTemplate = inputTemplate
            self.inputPathsMap = inputPathsMap
        }

        private enum CodingKeys: String, CodingKey {
            case inputTemplate = "InputTemplate"
            case inputPathsMap = "InputPathsMap"
        }
    }

    public struct PutTargetsResponse: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "FailedEntryCount", required: false, type: .integer), 
            AWSShapeMember(label: "FailedEntries", required: false, type: .list)
        ]
        /// The number of failed entries.
        public let failedEntryCount: Int32?
        /// The failed target entries.
        public let failedEntries: [PutTargetsResultEntry]?

        public init(failedEntryCount: Int32? = nil, failedEntries: [PutTargetsResultEntry]? = nil) {
            self.failedEntryCount = failedEntryCount
            self.failedEntries = failedEntries
        }

        private enum CodingKeys: String, CodingKey {
            case failedEntryCount = "FailedEntryCount"
            case failedEntries = "FailedEntries"
        }
    }

    public struct DescribeEventBusResponse: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Policy", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "Arn", required: false, type: .string)
        ]
        /// The policy that enables the external account to send events to your account.
        public let policy: String?
        /// The name of the event bus. Currently, this is always default.
        public let name: String?
        /// The Amazon Resource Name (ARN) of the account permitted to write events to the current account.
        public let arn: String?

        public init(policy: String? = nil, name: String? = nil, arn: String? = nil) {
            self.policy = policy
            self.name = name
            self.arn = arn
        }

        private enum CodingKeys: String, CodingKey {
            case policy = "Policy"
            case name = "Name"
            case arn = "Arn"
        }
    }

    public struct Rule: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Arn", required: false, type: .string), 
            AWSShapeMember(label: "State", required: false, type: .enum), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "EventPattern", required: false, type: .string), 
            AWSShapeMember(label: "RoleArn", required: false, type: .string), 
            AWSShapeMember(label: "ScheduleExpression", required: false, type: .string), 
            AWSShapeMember(label: "Description", required: false, type: .string)
        ]
        /// The Amazon Resource Name (ARN) of the rule.
        public let arn: String?
        /// The state of the rule.
        public let state: RuleState?
        /// The name of the rule.
        public let name: String?
        /// The event pattern of the rule. For more information, see Events and Event Patterns in the Amazon CloudWatch Events User Guide.
        public let eventPattern: String?
        /// The Amazon Resource Name (ARN) of the role that is used for target invocation.
        public let roleArn: String?
        /// The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".
        public let scheduleExpression: String?
        /// The description of the rule.
        public let description: String?

        public init(arn: String? = nil, state: RuleState? = nil, name: String? = nil, eventPattern: String? = nil, roleArn: String? = nil, scheduleExpression: String? = nil, description: String? = nil) {
            self.arn = arn
            self.state = state
            self.name = name
            self.eventPattern = eventPattern
            self.roleArn = roleArn
            self.scheduleExpression = scheduleExpression
            self.description = description
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case state = "State"
            case name = "Name"
            case eventPattern = "EventPattern"
            case roleArn = "RoleArn"
            case scheduleExpression = "ScheduleExpression"
            case description = "Description"
        }
    }

    public struct Target: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "RunCommandParameters", required: false, type: .structure), 
            AWSShapeMember(label: "InputTransformer", required: false, type: .structure), 
            AWSShapeMember(label: "Arn", required: true, type: .string), 
            AWSShapeMember(label: "Input", required: false, type: .string), 
            AWSShapeMember(label: "InputPath", required: false, type: .string), 
            AWSShapeMember(label: "EcsParameters", required: false, type: .structure), 
            AWSShapeMember(label: "RoleArn", required: false, type: .string), 
            AWSShapeMember(label: "KinesisParameters", required: false, type: .structure), 
            AWSShapeMember(label: "Id", required: true, type: .string)
        ]
        /// Parameters used when you are using the rule to invoke Amazon EC2 Run Command.
        public let runCommandParameters: RunCommandParameters?
        /// Settings to enable you to provide custom input to a target based on certain event data. You can extract one or more key-value pairs from the event and then use that data to send customized input to the target.
        public let inputTransformer: InputTransformer?
        /// The Amazon Resource Name (ARN) of the target.
        public let arn: String
        /// Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. You must use JSON dot notation, not bracket notation. For more information, see The JavaScript Object Notation (JSON) Data Interchange Format.
        public let input: String?
        /// The value of the JSONPath that is used for extracting part of the matched event when passing it to the target. You must use JSON dot notation, not bracket notation. For more information about JSON paths, see JSONPath.
        public let inputPath: String?
        /// Contains the Amazon ECS task definition and task count to be used, if the event target is an Amazon ECS task. For more information about Amazon ECS tasks, see Task Definitions  in the Amazon EC2 Container Service Developer Guide.
        public let ecsParameters: EcsParameters?
        /// The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. If one rule triggers multiple targets, you can use a different IAM role for each target.
        public let roleArn: String?
        /// The custom parameter you can use to control shard assignment, when the target is an Amazon Kinesis stream. If you do not include this parameter, the default is to use the eventId as the partition key.
        public let kinesisParameters: KinesisParameters?
        /// The ID of the target.
        public let id: String

        public init(runCommandParameters: RunCommandParameters? = nil, inputTransformer: InputTransformer? = nil, arn: String, input: String? = nil, inputPath: String? = nil, ecsParameters: EcsParameters? = nil, roleArn: String? = nil, kinesisParameters: KinesisParameters? = nil, id: String) {
            self.runCommandParameters = runCommandParameters
            self.inputTransformer = inputTransformer
            self.arn = arn
            self.input = input
            self.inputPath = inputPath
            self.ecsParameters = ecsParameters
            self.roleArn = roleArn
            self.kinesisParameters = kinesisParameters
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case runCommandParameters = "RunCommandParameters"
            case inputTransformer = "InputTransformer"
            case arn = "Arn"
            case input = "Input"
            case inputPath = "InputPath"
            case ecsParameters = "EcsParameters"
            case roleArn = "RoleArn"
            case kinesisParameters = "KinesisParameters"
            case id = "Id"
        }
    }

    public struct DisableRuleRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: true, type: .string)
        ]
        /// The name of the rule.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    public struct TestEventPatternRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Event", required: true, type: .string), 
            AWSShapeMember(label: "EventPattern", required: true, type: .string)
        ]
        /// The event, in JSON format, to test against the event pattern.
        public let event: String
        /// The event pattern. For more information, see Events and Event Patterns in the Amazon CloudWatch Events User Guide.
        public let eventPattern: String

        public init(event: String, eventPattern: String) {
            self.event = event
            self.eventPattern = eventPattern
        }

        private enum CodingKeys: String, CodingKey {
            case event = "Event"
            case eventPattern = "EventPattern"
        }
    }

    public struct RunCommandTarget: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Key", required: true, type: .string), 
            AWSShapeMember(label: "Values", required: true, type: .list)
        ]
        /// Can be either tag: tag-key or InstanceIds.
        public let key: String
        /// If Key is tag: tag-key, Values is a list of tag values. If Key is InstanceIds, Values is a list of Amazon EC2 instance IDs.
        public let values: [String]

        public init(key: String, values: [String]) {
            self.key = key
            self.values = values
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case values = "Values"
        }
    }

    public struct ListRuleNamesByTargetRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "TargetArn", required: true, type: .string), 
            AWSShapeMember(label: "Limit", required: false, type: .integer)
        ]
        /// The token returned by a previous call to retrieve the next set of results.
        public let nextToken: String?
        /// The Amazon Resource Name (ARN) of the target resource.
        public let targetArn: String
        /// The maximum number of results to return.
        public let limit: Int32?

        public init(nextToken: String? = nil, targetArn: String, limit: Int32? = nil) {
            self.nextToken = nextToken
            self.targetArn = targetArn
            self.limit = limit
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case targetArn = "TargetArn"
            case limit = "Limit"
        }
    }

    public struct PutRuleRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "ScheduleExpression", required: false, type: .string), 
            AWSShapeMember(label: "RoleArn", required: false, type: .string), 
            AWSShapeMember(label: "EventPattern", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: true, type: .string), 
            AWSShapeMember(label: "State", required: false, type: .enum)
        ]
        /// A description of the rule.
        public let description: String?
        /// The scheduling expression. For example, "cron(0 20 * * ? *)" or "rate(5 minutes)".
        public let scheduleExpression: String?
        /// The Amazon Resource Name (ARN) of the IAM role associated with the rule.
        public let roleArn: String?
        /// The event pattern. For more information, see Events and Event Patterns in the Amazon CloudWatch Events User Guide.
        public let eventPattern: String?
        /// The name of the rule that you are creating or updating.
        public let name: String
        /// Indicates whether the rule is enabled or disabled.
        public let state: RuleState?

        public init(description: String? = nil, scheduleExpression: String? = nil, roleArn: String? = nil, eventPattern: String? = nil, name: String, state: RuleState? = nil) {
            self.description = description
            self.scheduleExpression = scheduleExpression
            self.roleArn = roleArn
            self.eventPattern = eventPattern
            self.name = name
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case scheduleExpression = "ScheduleExpression"
            case roleArn = "RoleArn"
            case eventPattern = "EventPattern"
            case name = "Name"
            case state = "State"
        }
    }

    public struct RunCommandParameters: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "RunCommandTargets", required: true, type: .list)
        ]
        /// Currently, we support including only one RunCommandTarget block, which specifies either an array of InstanceIds or a tag.
        public let runCommandTargets: [RunCommandTarget]

        public init(runCommandTargets: [RunCommandTarget]) {
            self.runCommandTargets = runCommandTargets
        }

        private enum CodingKeys: String, CodingKey {
            case runCommandTargets = "RunCommandTargets"
        }
    }

    public struct ListTargetsByRuleResponse: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Targets", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The targets assigned to the rule.
        public let targets: [Target]?
        /// Indicates whether there are additional results to retrieve. If there are no more results, the value is null.
        public let nextToken: String?

        public init(targets: [Target]? = nil, nextToken: String? = nil) {
            self.targets = targets
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case targets = "Targets"
            case nextToken = "NextToken"
        }
    }

    public struct DeleteRuleRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: true, type: .string)
        ]
        /// The name of the rule.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    public struct DescribeRuleResponse: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Arn", required: false, type: .string), 
            AWSShapeMember(label: "State", required: false, type: .enum), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "EventPattern", required: false, type: .string), 
            AWSShapeMember(label: "RoleArn", required: false, type: .string), 
            AWSShapeMember(label: "ScheduleExpression", required: false, type: .string), 
            AWSShapeMember(label: "Description", required: false, type: .string)
        ]
        /// The Amazon Resource Name (ARN) of the rule.
        public let arn: String?
        /// Specifies whether the rule is enabled or disabled.
        public let state: RuleState?
        /// The name of the rule.
        public let name: String?
        /// The event pattern. For more information, see Events and Event Patterns in the Amazon CloudWatch Events User Guide.
        public let eventPattern: String?
        /// The Amazon Resource Name (ARN) of the IAM role associated with the rule.
        public let roleArn: String?
        /// The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".
        public let scheduleExpression: String?
        /// The description of the rule.
        public let description: String?

        public init(arn: String? = nil, state: RuleState? = nil, name: String? = nil, eventPattern: String? = nil, roleArn: String? = nil, scheduleExpression: String? = nil, description: String? = nil) {
            self.arn = arn
            self.state = state
            self.name = name
            self.eventPattern = eventPattern
            self.roleArn = roleArn
            self.scheduleExpression = scheduleExpression
            self.description = description
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case state = "State"
            case name = "Name"
            case eventPattern = "EventPattern"
            case roleArn = "RoleArn"
            case scheduleExpression = "ScheduleExpression"
            case description = "Description"
        }
    }

    public struct DescribeEventBusRequest: AWSShape {
        /// The key for the payload

    }

    public struct PutEventsRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Entries", required: true, type: .list)
        ]
        /// The entry that defines an event in your system. You can specify several parameters for the entry such as the source and type of the event, resources associated with the event, and so on.
        public let entries: [PutEventsRequestEntry]

        public init(entries: [PutEventsRequestEntry]) {
            self.entries = entries
        }

        private enum CodingKeys: String, CodingKey {
            case entries = "Entries"
        }
    }

    public struct RemoveTargetsResultEntry: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "ErrorMessage", required: false, type: .string), 
            AWSShapeMember(label: "ErrorCode", required: false, type: .string), 
            AWSShapeMember(label: "TargetId", required: false, type: .string)
        ]
        /// The error message that explains why the target removal failed.
        public let errorMessage: String?
        /// The error code that indicates why the target removal failed. If the value is ConcurrentModificationException, too many requests were made at the same time.
        public let errorCode: String?
        /// The ID of the target.
        public let targetId: String?

        public init(errorMessage: String? = nil, errorCode: String? = nil, targetId: String? = nil) {
            self.errorMessage = errorMessage
            self.errorCode = errorCode
            self.targetId = targetId
        }

        private enum CodingKeys: String, CodingKey {
            case errorMessage = "ErrorMessage"
            case errorCode = "ErrorCode"
            case targetId = "TargetId"
        }
    }

    public struct PutEventsRequestEntry: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Detail", required: false, type: .string), 
            AWSShapeMember(label: "DetailType", required: false, type: .string), 
            AWSShapeMember(label: "Source", required: false, type: .string), 
            AWSShapeMember(label: "Time", required: false, type: .timestamp), 
            AWSShapeMember(label: "Resources", required: false, type: .list)
        ]
        /// In the JSON sense, an object containing fields, which may also contain nested subobjects. No constraints are imposed on its contents.
        public let detail: String?
        /// Free-form string used to decide what fields to expect in the event detail.
        public let detailType: String?
        /// The source of the event.
        public let source: String?
        /// The timestamp of the event, per RFC3339. If no timestamp is provided, the timestamp of the PutEvents call is used.
        public let time: Double?
        /// AWS resources, identified by Amazon Resource Name (ARN), which the event primarily concerns. Any number, including zero, may be present.
        public let resources: [String]?

        public init(detail: String? = nil, detailType: String? = nil, source: String? = nil, time: Double? = nil, resources: [String]? = nil) {
            self.detail = detail
            self.detailType = detailType
            self.source = source
            self.time = time
            self.resources = resources
        }

        private enum CodingKeys: String, CodingKey {
            case detail = "Detail"
            case detailType = "DetailType"
            case source = "Source"
            case time = "Time"
            case resources = "Resources"
        }
    }

    public struct RemovePermissionRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "StatementId", required: true, type: .string)
        ]
        /// The statement ID corresponding to the account that is no longer allowed to put events to the default event bus.
        public let statementId: String

        public init(statementId: String) {
            self.statementId = statementId
        }

        private enum CodingKeys: String, CodingKey {
            case statementId = "StatementId"
        }
    }

    public struct TestEventPatternResponse: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Result", required: false, type: .boolean)
        ]
        /// Indicates whether the event matches the event pattern.
        public let result: Bool?

        public init(result: Bool? = nil) {
            self.result = result
        }

        private enum CodingKeys: String, CodingKey {
            case result = "Result"
        }
    }

    public struct PutTargetsRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Targets", required: true, type: .list), 
            AWSShapeMember(label: "Rule", required: true, type: .string)
        ]
        /// The targets to update or add to the rule.
        public let targets: [Target]
        /// The name of the rule.
        public let rule: String

        public init(targets: [Target], rule: String) {
            self.targets = targets
            self.rule = rule
        }

        private enum CodingKeys: String, CodingKey {
            case targets = "Targets"
            case rule = "Rule"
        }
    }

    public enum RuleState: String, CustomStringConvertible, Codable {
        case enabled = "ENABLED"
        case disabled = "DISABLED"
        public var description: String { return self.rawValue }
    }

    public struct EnableRuleRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: true, type: .string)
        ]
        /// The name of the rule.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    public struct PutTargetsResultEntry: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "ErrorMessage", required: false, type: .string), 
            AWSShapeMember(label: "ErrorCode", required: false, type: .string), 
            AWSShapeMember(label: "TargetId", required: false, type: .string)
        ]
        /// The error message that explains why the target addition failed.
        public let errorMessage: String?
        /// The error code that indicates why the target addition failed. If the value is ConcurrentModificationException, too many requests were made at the same time.
        public let errorCode: String?
        /// The ID of the target.
        public let targetId: String?

        public init(errorMessage: String? = nil, errorCode: String? = nil, targetId: String? = nil) {
            self.errorMessage = errorMessage
            self.errorCode = errorCode
            self.targetId = targetId
        }

        private enum CodingKeys: String, CodingKey {
            case errorMessage = "ErrorMessage"
            case errorCode = "ErrorCode"
            case targetId = "TargetId"
        }
    }

    public struct ListRulesResponse: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "Rules", required: false, type: .list)
        ]
        /// Indicates whether there are additional results to retrieve. If there are no more results, the value is null.
        public let nextToken: String?
        /// The rules that match the specified criteria.
        public let rules: [Rule]?

        public init(nextToken: String? = nil, rules: [Rule]? = nil) {
            self.nextToken = nextToken
            self.rules = rules
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case rules = "Rules"
        }
    }

    public struct RemoveTargetsResponse: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "FailedEntryCount", required: false, type: .integer), 
            AWSShapeMember(label: "FailedEntries", required: false, type: .list)
        ]
        /// The number of failed entries.
        public let failedEntryCount: Int32?
        /// The failed target entries.
        public let failedEntries: [RemoveTargetsResultEntry]?

        public init(failedEntryCount: Int32? = nil, failedEntries: [RemoveTargetsResultEntry]? = nil) {
            self.failedEntryCount = failedEntryCount
            self.failedEntries = failedEntries
        }

        private enum CodingKeys: String, CodingKey {
            case failedEntryCount = "FailedEntryCount"
            case failedEntries = "FailedEntries"
        }
    }

    public struct EcsParameters: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "TaskCount", required: false, type: .integer), 
            AWSShapeMember(label: "TaskDefinitionArn", required: true, type: .string)
        ]
        /// The number of tasks to create based on the TaskDefinition. The default is one.
        public let taskCount: Int32?
        /// The ARN of the task definition to use if the event target is an Amazon ECS cluster. 
        public let taskDefinitionArn: String

        public init(taskCount: Int32? = nil, taskDefinitionArn: String) {
            self.taskCount = taskCount
            self.taskDefinitionArn = taskDefinitionArn
        }

        private enum CodingKeys: String, CodingKey {
            case taskCount = "TaskCount"
            case taskDefinitionArn = "TaskDefinitionArn"
        }
    }

    public struct DescribeRuleRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: true, type: .string)
        ]
        /// The name of the rule.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    public struct RemoveTargetsRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Ids", required: true, type: .list), 
            AWSShapeMember(label: "Rule", required: true, type: .string)
        ]
        /// The IDs of the targets to remove from the rule.
        public let ids: [String]
        /// The name of the rule.
        public let rule: String

        public init(ids: [String], rule: String) {
            self.ids = ids
            self.rule = rule
        }

        private enum CodingKeys: String, CodingKey {
            case ids = "Ids"
            case rule = "Rule"
        }
    }

    public struct PutRuleResponse: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "RuleArn", required: false, type: .string)
        ]
        /// The Amazon Resource Name (ARN) of the rule.
        public let ruleArn: String?

        public init(ruleArn: String? = nil) {
            self.ruleArn = ruleArn
        }

        private enum CodingKeys: String, CodingKey {
            case ruleArn = "RuleArn"
        }
    }

    public struct ListRulesRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "NamePrefix", required: false, type: .string), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "Limit", required: false, type: .integer)
        ]
        /// The prefix matching the rule name.
        public let namePrefix: String?
        /// The token returned by a previous call to retrieve the next set of results.
        public let nextToken: String?
        /// The maximum number of results to return.
        public let limit: Int32?

        public init(namePrefix: String? = nil, nextToken: String? = nil, limit: Int32? = nil) {
            self.namePrefix = namePrefix
            self.nextToken = nextToken
            self.limit = limit
        }

        private enum CodingKeys: String, CodingKey {
            case namePrefix = "NamePrefix"
            case nextToken = "NextToken"
            case limit = "Limit"
        }
    }

    public struct ListRuleNamesByTargetResponse: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "RuleNames", required: false, type: .list)
        ]
        /// Indicates whether there are additional results to retrieve. If there are no more results, the value is null.
        public let nextToken: String?
        /// The names of the rules that can invoke the given target.
        public let ruleNames: [String]?

        public init(nextToken: String? = nil, ruleNames: [String]? = nil) {
            self.nextToken = nextToken
            self.ruleNames = ruleNames
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case ruleNames = "RuleNames"
        }
    }

    public struct ListTargetsByRuleRequest: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Rule", required: true, type: .string), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "Limit", required: false, type: .integer)
        ]
        /// The name of the rule.
        public let rule: String
        /// The token returned by a previous call to retrieve the next set of results.
        public let nextToken: String?
        /// The maximum number of results to return.
        public let limit: Int32?

        public init(rule: String, nextToken: String? = nil, limit: Int32? = nil) {
            self.rule = rule
            self.nextToken = nextToken
            self.limit = limit
        }

        private enum CodingKeys: String, CodingKey {
            case rule = "Rule"
            case nextToken = "NextToken"
            case limit = "Limit"
        }
    }

    public struct PutEventsResultEntry: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "ErrorMessage", required: false, type: .string), 
            AWSShapeMember(label: "EventId", required: false, type: .string), 
            AWSShapeMember(label: "ErrorCode", required: false, type: .string)
        ]
        /// The error message that explains why the event submission failed.
        public let errorMessage: String?
        /// The ID of the event.
        public let eventId: String?
        /// The error code that indicates why the event submission failed.
        public let errorCode: String?

        public init(errorMessage: String? = nil, eventId: String? = nil, errorCode: String? = nil) {
            self.errorMessage = errorMessage
            self.eventId = eventId
            self.errorCode = errorCode
        }

        private enum CodingKeys: String, CodingKey {
            case errorMessage = "ErrorMessage"
            case eventId = "EventId"
            case errorCode = "ErrorCode"
        }
    }

    public struct PutEventsResponse: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "FailedEntryCount", required: false, type: .integer), 
            AWSShapeMember(label: "Entries", required: false, type: .list)
        ]
        /// The number of failed entries.
        public let failedEntryCount: Int32?
        /// The successfully and unsuccessfully ingested events results. If the ingestion was successful, the entry has the event ID in it. Otherwise, you can use the error code and error message to identify the problem with the entry.
        public let entries: [PutEventsResultEntry]?

        public init(failedEntryCount: Int32? = nil, entries: [PutEventsResultEntry]? = nil) {
            self.failedEntryCount = failedEntryCount
            self.entries = entries
        }

        private enum CodingKeys: String, CodingKey {
            case failedEntryCount = "FailedEntryCount"
            case entries = "Entries"
        }
    }

    public struct KinesisParameters: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "PartitionKeyPath", required: true, type: .string)
        ]
        /// The JSON path to be extracted from the event and used as the partition key. For more information, see Amazon Kinesis Streams Key Concepts in the Amazon Kinesis Streams Developer Guide.
        public let partitionKeyPath: String

        public init(partitionKeyPath: String) {
            self.partitionKeyPath = partitionKeyPath
        }

        private enum CodingKeys: String, CodingKey {
            case partitionKeyPath = "PartitionKeyPath"
        }
    }

}