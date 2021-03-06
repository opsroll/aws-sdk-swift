//
//  Util.swift
//  AWSSDKSwift
//
//  Created by Yuki Takei on 2017/03/26.
//
//

import Foundation
import SwiftyJSON
import AWSSDKSwiftCore

let enableShowLog = ProcessInfo.processInfo.environment["Verbose"] == nil ? false : true

let AUTO_GENERATE_TEXT = "// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT."

let LICENSE_TEXT = "/**\n" + (try! String(contentsOfFile: rootPath()+"/LICENSE"))+"\n*/"

func indt(_ times: Int, hard: Bool = true) -> String {
    return (0..<times).map({ _ in "    " }).joined()
}

func rootPath() -> String {
    return #file.characters
        .split(separator: "/", omittingEmptySubsequences: false)
        .dropLast(3)
        .map { String($0) }
        .joined(separator: "/")
}

func loadEndpointJSON() throws -> JSON {
    let data = try Data(contentsOf: URL(string: "file://\(rootPath())/models/endpoints/endpoints.json")!)
    return try JSON(data: data)
}

func loadDocJSONList() throws -> [JSON] {
    let directories = Glob.entries(pattern: "\(rootPath())/models/apis/**")
    
    let docPaths: [String] = directories.map {
        let entries = Glob.entries(pattern: $0+"/**/docs-*.json")
        return entries[entries.count-1]
    }
    
    return try docPaths.map {
        let data = try Data(contentsOf: URL(string: "file://\($0)")!)
        return try JSON(data: data)
    }
}

func loadAPIJSONList() throws -> [JSON] {
    let directories = Glob.entries(pattern: "\(rootPath())/models/apis/**")
    
    let apiPaths: [String] = directories.map {
        let entries = Glob.entries(pattern: $0+"/**/api-*.json")
        return entries[entries.count-1]
    }
    
    return try apiPaths.map {
        let data = try Data(contentsOf: URL(string: "file://\($0)")!)
        var json = try JSON(data: data)
        let paths: [String] = $0.split(separator: "/").reversed()
        json["serviceName"].stringValue = paths[2]
        return json
    }
}

func mkdirp(_ dir: String) -> Int32 {
    let process = Process()
    process.launchPath = "/bin/mkdir" // Mac and Linux
    process.arguments = ["-p", dir]
    process.launch()
    process.waitUntilExit()
    return process.terminationStatus
}

func log(_ message: String) {
    if enableShowLog {
        print(message)
    }
}
