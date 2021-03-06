//
//  URLExtensions.swift
//  Countdown
//
//  Created by Richard Robinson on 2020-08-04.
//

import Foundation

extension URL {
    static let appScheme = "com.richardrobinson.hourglass"
    
    struct Hosts {
        static let addEvent = "addEvent"
        static let viewPinned = "viewPinned"
    }
}

public extension URL {
    /// Returns a URL for the given app group and database pointing to the sqlite database.
    static func storeURL(for appGroup: String, databaseName: String) -> URL? {
        guard let fileContainer = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: appGroup) else {
            return nil
        }

        return fileContainer.appendingPathComponent("\(databaseName).sqlite")
    }
}

extension FileManager {
    func saveImage(at path: String, with contents: Data) throws -> URL {
        let dir = urls(for: .applicationSupportDirectory, in: .userDomainMask)
            .first!
            .appendingPathComponent("user_images", isDirectory: true)
                 
        try! createDirectory(at: dir, withIntermediateDirectories: true, attributes: nil)
        
        let fullPath = dir.appendingPathComponent("\(path).png")
        
        try contents.write(to: fullPath, options: .atomic)
        return fullPath
    }
}
