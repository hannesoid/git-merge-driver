//#!/usr/bin/env xcrun --sdk macosx swift -F vendor
//
//  main.swift
//  GitBothingMerger
//
//  Created by Hannes Oud on 02.05.19.
//  Copyright © 2019 IdeasOnCanvas GmbH. All rights reserved.
//

import Foundation

extension String: Error { }

extension Array {

    subscript (atSafeIndex safeIndex: Int) -> Element? {
        return safeIndex < self.count ? self[safeIndex] : nil
    }
}

func main() {
    guard CommandLine.arguments.count == 4 else {
        print("Failed - expected three arguments: <path_to_common_anchestor> <path_to_our> <pth_to_theirs>") // arg 0 is the command call
        return
    }

    struct File {

        let path: String
        let url: URL
        let data: Data
        let contentString: String
        let lines: [String]

        init(path: String) throws {
            let url = URL(fileURLWithPath: path)
            let data = try Data(contentsOf: url)
            guard let string = String(data: data, encoding: .utf8) else { throw "Unable to read .utf8 from \(path)" }

            self.path = path
            self.url = url
            self.data = data
            self.contentString = string
            self.lines = string.split(separator: Character("\n")).map { String($0) }
        }
    }

    do {
        var buffer: [String] = []
        let anchestor = try File(path: CommandLine.arguments[1])
        let local = try File(path: CommandLine.arguments[2])
        let remote = try File(path: CommandLine.arguments[3])
        guard local.contentString != remote.contentString else { return } // all good

        for index in anchestor.lines.enumerated() {
//            if self.safe
        }
        for (local, remote) in zip(local.lines, remote.lines) {
            if local == remote {
                
            }
        }
    } catch {
        print(error)
        exit(1)
    }


}

public class Merger {

    public func merge(anchestor: [String], local: [String], remote: [String]) throws -> [String] {
        return []
    }
}
