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

extension Importexport {

    public struct ListJobsInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "Marker", required: false, type: .string), 
            AWSShapeProperty(label: "MaxJobs", required: false, type: .integer), 
            AWSShapeProperty(label: "APIVersion", required: false, type: .string)
        ]
        public let marker: String?
        public let maxJobs: Int32?
        public let aPIVersion: String?

        public init(marker: String? = nil, maxJobs: Int32? = nil, aPIVersion: String? = nil) {
            self.marker = marker
            self.maxJobs = maxJobs
            self.aPIVersion = aPIVersion
        }

        public init(dictionary: [String: Any]) throws {
            self.marker = dictionary["Marker"] as? String
            self.maxJobs = dictionary["MaxJobs"] as? Int32
            self.aPIVersion = dictionary["APIVersion"] as? String
        }
    }

    public struct CreateJobInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "JobType", required: true, type: .enum), 
            AWSShapeProperty(label: "ManifestAddendum", required: false, type: .string), 
            AWSShapeProperty(label: "Manifest", required: true, type: .string), 
            AWSShapeProperty(label: "APIVersion", required: false, type: .string), 
            AWSShapeProperty(label: "ValidateOnly", required: true, type: .boolean)
        ]
        public let jobType: JobType
        public let manifestAddendum: String?
        public let manifest: String
        public let aPIVersion: String?
        public let validateOnly: Bool

        public init(jobType: JobType, manifestAddendum: String? = nil, manifest: String, aPIVersion: String? = nil, validateOnly: Bool) {
            self.jobType = jobType
            self.manifestAddendum = manifestAddendum
            self.manifest = manifest
            self.aPIVersion = aPIVersion
            self.validateOnly = validateOnly
        }

        public init(dictionary: [String: Any]) throws {
            guard let rawJobType = dictionary["JobType"] as? String, let jobType = JobType(rawValue: rawJobType) else { throw InitializableError.missingRequiredParam("JobType") }
            self.jobType = jobType
            self.manifestAddendum = dictionary["ManifestAddendum"] as? String
            guard let manifest = dictionary["Manifest"] as? String else { throw InitializableError.missingRequiredParam("Manifest") }
            self.manifest = manifest
            self.aPIVersion = dictionary["APIVersion"] as? String
            guard let validateOnly = dictionary["ValidateOnly"] as? Bool else { throw InitializableError.missingRequiredParam("ValidateOnly") }
            self.validateOnly = validateOnly
        }
    }

    public struct GetShippingLabelInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "stateOrProvince", required: false, type: .string), 
            AWSShapeProperty(label: "city", required: false, type: .string), 
            AWSShapeProperty(label: "postalCode", required: false, type: .string), 
            AWSShapeProperty(label: "name", required: false, type: .string), 
            AWSShapeProperty(label: "phoneNumber", required: false, type: .string), 
            AWSShapeProperty(label: "street3", required: false, type: .string), 
            AWSShapeProperty(label: "jobIds", required: true, type: .list), 
            AWSShapeProperty(label: "APIVersion", required: false, type: .string), 
            AWSShapeProperty(label: "street2", required: false, type: .string), 
            AWSShapeProperty(label: "street1", required: false, type: .string), 
            AWSShapeProperty(label: "company", required: false, type: .string), 
            AWSShapeProperty(label: "country", required: false, type: .string)
        ]
        public let stateOrProvince: String?
        public let city: String?
        public let postalCode: String?
        public let name: String?
        public let phoneNumber: String?
        public let street3: String?
        public let jobIds: [String]
        public let aPIVersion: String?
        public let street2: String?
        public let street1: String?
        public let company: String?
        public let country: String?

        public init(stateOrProvince: String? = nil, city: String? = nil, postalCode: String? = nil, name: String? = nil, phoneNumber: String? = nil, street3: String? = nil, jobIds: [String], aPIVersion: String? = nil, street2: String? = nil, street1: String? = nil, company: String? = nil, country: String? = nil) {
            self.stateOrProvince = stateOrProvince
            self.city = city
            self.postalCode = postalCode
            self.name = name
            self.phoneNumber = phoneNumber
            self.street3 = street3
            self.jobIds = jobIds
            self.aPIVersion = aPIVersion
            self.street2 = street2
            self.street1 = street1
            self.company = company
            self.country = country
        }

        public init(dictionary: [String: Any]) throws {
            self.stateOrProvince = dictionary["stateOrProvince"] as? String
            self.city = dictionary["city"] as? String
            self.postalCode = dictionary["postalCode"] as? String
            self.name = dictionary["name"] as? String
            self.phoneNumber = dictionary["phoneNumber"] as? String
            self.street3 = dictionary["street3"] as? String
            guard let jobIds = dictionary["jobIds"] as? [String] else { throw InitializableError.missingRequiredParam("jobIds") }
            self.jobIds = jobIds
            self.aPIVersion = dictionary["APIVersion"] as? String
            self.street2 = dictionary["street2"] as? String
            self.street1 = dictionary["street1"] as? String
            self.company = dictionary["company"] as? String
            self.country = dictionary["country"] as? String
        }
    }

    public struct GetStatusInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "JobId", required: true, type: .string), 
            AWSShapeProperty(label: "APIVersion", required: false, type: .string)
        ]
        public let jobId: String
        public let aPIVersion: String?

        public init(jobId: String, aPIVersion: String? = nil) {
            self.jobId = jobId
            self.aPIVersion = aPIVersion
        }

        public init(dictionary: [String: Any]) throws {
            guard let jobId = dictionary["JobId"] as? String else { throw InitializableError.missingRequiredParam("JobId") }
            self.jobId = jobId
            self.aPIVersion = dictionary["APIVersion"] as? String
        }
    }

    public struct CreateJobOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "JobType", required: false, type: .enum), 
            AWSShapeProperty(label: "ArtifactList", required: false, type: .list), 
            AWSShapeProperty(label: "SignatureFileContents", required: false, type: .string), 
            AWSShapeProperty(label: "WarningMessage", required: false, type: .string), 
            AWSShapeProperty(label: "Signature", required: false, type: .string), 
            AWSShapeProperty(label: "JobId", required: false, type: .string)
        ]
        public let jobType: JobType?
        public let artifactList: [Artifact]?
        public let signatureFileContents: String?
        public let warningMessage: String?
        public let signature: String?
        public let jobId: String?

        public init(jobType: JobType? = nil, artifactList: [Artifact]? = nil, signatureFileContents: String? = nil, warningMessage: String? = nil, signature: String? = nil, jobId: String? = nil) {
            self.jobType = jobType
            self.artifactList = artifactList
            self.signatureFileContents = signatureFileContents
            self.warningMessage = warningMessage
            self.signature = signature
            self.jobId = jobId
        }

        public init(dictionary: [String: Any]) throws {
            if let jobType = dictionary["JobType"] as? String { self.jobType = JobType(rawValue: jobType) } else { self.jobType = nil }
            if let artifactList = dictionary["ArtifactList"] as? [[String: Any]] {
                self.artifactList = try artifactList.map({ try Artifact(dictionary: $0) })
            } else { 
                self.artifactList = nil
            }
            self.signatureFileContents = dictionary["SignatureFileContents"] as? String
            self.warningMessage = dictionary["WarningMessage"] as? String
            self.signature = dictionary["Signature"] as? String
            self.jobId = dictionary["JobId"] as? String
        }
    }

    public enum JobType: String, CustomStringConvertible {
        case `import` = "Import"
        case export = "Export"
        public var description: String { return self.rawValue }
    }

    public struct GetShippingLabelOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "Warning", required: false, type: .string), 
            AWSShapeProperty(label: "ShippingLabelURL", required: false, type: .string)
        ]
        public let warning: String?
        public let shippingLabelURL: String?

        public init(warning: String? = nil, shippingLabelURL: String? = nil) {
            self.warning = warning
            self.shippingLabelURL = shippingLabelURL
        }

        public init(dictionary: [String: Any]) throws {
            self.warning = dictionary["Warning"] as? String
            self.shippingLabelURL = dictionary["ShippingLabelURL"] as? String
        }
    }

    public struct UpdateJobOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "Success", required: false, type: .boolean), 
            AWSShapeProperty(label: "WarningMessage", required: false, type: .string), 
            AWSShapeProperty(label: "ArtifactList", required: false, type: .list)
        ]
        public let success: Bool?
        public let warningMessage: String?
        public let artifactList: [Artifact]?

        public init(success: Bool? = nil, warningMessage: String? = nil, artifactList: [Artifact]? = nil) {
            self.success = success
            self.warningMessage = warningMessage
            self.artifactList = artifactList
        }

        public init(dictionary: [String: Any]) throws {
            self.success = dictionary["Success"] as? Bool
            self.warningMessage = dictionary["WarningMessage"] as? String
            if let artifactList = dictionary["ArtifactList"] as? [[String: Any]] {
                self.artifactList = try artifactList.map({ try Artifact(dictionary: $0) })
            } else { 
                self.artifactList = nil
            }
        }
    }

    public struct UpdateJobInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "JobType", required: true, type: .enum), 
            AWSShapeProperty(label: "APIVersion", required: false, type: .string), 
            AWSShapeProperty(label: "Manifest", required: true, type: .string), 
            AWSShapeProperty(label: "JobId", required: true, type: .string), 
            AWSShapeProperty(label: "ValidateOnly", required: true, type: .boolean)
        ]
        public let jobType: JobType
        public let aPIVersion: String?
        public let manifest: String
        public let jobId: String
        public let validateOnly: Bool

        public init(jobType: JobType, aPIVersion: String? = nil, manifest: String, jobId: String, validateOnly: Bool) {
            self.jobType = jobType
            self.aPIVersion = aPIVersion
            self.manifest = manifest
            self.jobId = jobId
            self.validateOnly = validateOnly
        }

        public init(dictionary: [String: Any]) throws {
            guard let rawJobType = dictionary["JobType"] as? String, let jobType = JobType(rawValue: rawJobType) else { throw InitializableError.missingRequiredParam("JobType") }
            self.jobType = jobType
            self.aPIVersion = dictionary["APIVersion"] as? String
            guard let manifest = dictionary["Manifest"] as? String else { throw InitializableError.missingRequiredParam("Manifest") }
            self.manifest = manifest
            guard let jobId = dictionary["JobId"] as? String else { throw InitializableError.missingRequiredParam("JobId") }
            self.jobId = jobId
            guard let validateOnly = dictionary["ValidateOnly"] as? Bool else { throw InitializableError.missingRequiredParam("ValidateOnly") }
            self.validateOnly = validateOnly
        }
    }

    public struct Job: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "JobType", required: false, type: .enum), 
            AWSShapeProperty(label: "CreationDate", required: false, type: .timestamp), 
            AWSShapeProperty(label: "JobId", required: false, type: .string), 
            AWSShapeProperty(label: "IsCanceled", required: false, type: .boolean)
        ]
        public let jobType: JobType?
        public let creationDate: Date?
        public let jobId: String?
        public let isCanceled: Bool?

        public init(jobType: JobType? = nil, creationDate: Date? = nil, jobId: String? = nil, isCanceled: Bool? = nil) {
            self.jobType = jobType
            self.creationDate = creationDate
            self.jobId = jobId
            self.isCanceled = isCanceled
        }

        public init(dictionary: [String: Any]) throws {
            if let jobType = dictionary["JobType"] as? String { self.jobType = JobType(rawValue: jobType) } else { self.jobType = nil }
            self.creationDate = dictionary["CreationDate"] as? Date
            self.jobId = dictionary["JobId"] as? String
            self.isCanceled = dictionary["IsCanceled"] as? Bool
        }
    }

    public struct GetStatusOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "Carrier", required: false, type: .string), 
            AWSShapeProperty(label: "ArtifactList", required: false, type: .list), 
            AWSShapeProperty(label: "Signature", required: false, type: .string), 
            AWSShapeProperty(label: "ProgressMessage", required: false, type: .string), 
            AWSShapeProperty(label: "CreationDate", required: false, type: .timestamp), 
            AWSShapeProperty(label: "CurrentManifest", required: false, type: .string), 
            AWSShapeProperty(label: "TrackingNumber", required: false, type: .string), 
            AWSShapeProperty(label: "ProgressCode", required: false, type: .string), 
            AWSShapeProperty(label: "JobId", required: false, type: .string), 
            AWSShapeProperty(label: "LogKey", required: false, type: .string), 
            AWSShapeProperty(label: "SignatureFileContents", required: false, type: .string), 
            AWSShapeProperty(label: "LocationMessage", required: false, type: .string), 
            AWSShapeProperty(label: "JobType", required: false, type: .enum), 
            AWSShapeProperty(label: "ErrorCount", required: false, type: .integer), 
            AWSShapeProperty(label: "LogBucket", required: false, type: .string), 
            AWSShapeProperty(label: "LocationCode", required: false, type: .string)
        ]
        public let carrier: String?
        public let artifactList: [Artifact]?
        public let signature: String?
        public let progressMessage: String?
        public let creationDate: Date?
        public let currentManifest: String?
        public let trackingNumber: String?
        public let progressCode: String?
        public let jobId: String?
        public let logKey: String?
        public let signatureFileContents: String?
        public let locationMessage: String?
        public let jobType: JobType?
        public let errorCount: Int32?
        public let logBucket: String?
        public let locationCode: String?

        public init(carrier: String? = nil, artifactList: [Artifact]? = nil, signature: String? = nil, progressMessage: String? = nil, creationDate: Date? = nil, currentManifest: String? = nil, trackingNumber: String? = nil, progressCode: String? = nil, jobId: String? = nil, logKey: String? = nil, signatureFileContents: String? = nil, locationMessage: String? = nil, jobType: JobType? = nil, errorCount: Int32? = nil, logBucket: String? = nil, locationCode: String? = nil) {
            self.carrier = carrier
            self.artifactList = artifactList
            self.signature = signature
            self.progressMessage = progressMessage
            self.creationDate = creationDate
            self.currentManifest = currentManifest
            self.trackingNumber = trackingNumber
            self.progressCode = progressCode
            self.jobId = jobId
            self.logKey = logKey
            self.signatureFileContents = signatureFileContents
            self.locationMessage = locationMessage
            self.jobType = jobType
            self.errorCount = errorCount
            self.logBucket = logBucket
            self.locationCode = locationCode
        }

        public init(dictionary: [String: Any]) throws {
            self.carrier = dictionary["Carrier"] as? String
            if let artifactList = dictionary["ArtifactList"] as? [[String: Any]] {
                self.artifactList = try artifactList.map({ try Artifact(dictionary: $0) })
            } else { 
                self.artifactList = nil
            }
            self.signature = dictionary["Signature"] as? String
            self.progressMessage = dictionary["ProgressMessage"] as? String
            self.creationDate = dictionary["CreationDate"] as? Date
            self.currentManifest = dictionary["CurrentManifest"] as? String
            self.trackingNumber = dictionary["TrackingNumber"] as? String
            self.progressCode = dictionary["ProgressCode"] as? String
            self.jobId = dictionary["JobId"] as? String
            self.logKey = dictionary["LogKey"] as? String
            self.signatureFileContents = dictionary["SignatureFileContents"] as? String
            self.locationMessage = dictionary["LocationMessage"] as? String
            if let jobType = dictionary["JobType"] as? String { self.jobType = JobType(rawValue: jobType) } else { self.jobType = nil }
            self.errorCount = dictionary["ErrorCount"] as? Int32
            self.logBucket = dictionary["LogBucket"] as? String
            self.locationCode = dictionary["LocationCode"] as? String
        }
    }

    public struct ListJobsOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "Jobs", required: false, type: .list), 
            AWSShapeProperty(label: "IsTruncated", required: false, type: .boolean)
        ]
        public let jobs: [Job]?
        public let isTruncated: Bool?

        public init(jobs: [Job]? = nil, isTruncated: Bool? = nil) {
            self.jobs = jobs
            self.isTruncated = isTruncated
        }

        public init(dictionary: [String: Any]) throws {
            if let jobs = dictionary["Jobs"] as? [[String: Any]] {
                self.jobs = try jobs.map({ try Job(dictionary: $0) })
            } else { 
                self.jobs = nil
            }
            self.isTruncated = dictionary["IsTruncated"] as? Bool
        }
    }

    public struct Artifact: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "URL", required: false, type: .string), 
            AWSShapeProperty(label: "Description", required: false, type: .string)
        ]
        public let uRL: String?
        public let description: String?

        public init(uRL: String? = nil, description: String? = nil) {
            self.uRL = uRL
            self.description = description
        }

        public init(dictionary: [String: Any]) throws {
            self.uRL = dictionary["URL"] as? String
            self.description = dictionary["Description"] as? String
        }
    }

    public struct CancelJobInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "JobId", required: true, type: .string), 
            AWSShapeProperty(label: "APIVersion", required: false, type: .string)
        ]
        public let jobId: String
        public let aPIVersion: String?

        public init(jobId: String, aPIVersion: String? = nil) {
            self.jobId = jobId
            self.aPIVersion = aPIVersion
        }

        public init(dictionary: [String: Any]) throws {
            guard let jobId = dictionary["JobId"] as? String else { throw InitializableError.missingRequiredParam("JobId") }
            self.jobId = jobId
            self.aPIVersion = dictionary["APIVersion"] as? String
        }
    }

    public struct CancelJobOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints = [
            AWSShapeProperty(label: "Success", required: false, type: .boolean)
        ]
        public let success: Bool?

        public init(success: Bool? = nil) {
            self.success = success
        }

        public init(dictionary: [String: Any]) throws {
            self.success = dictionary["Success"] as? Bool
        }
    }

}