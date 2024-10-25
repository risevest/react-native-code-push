//
//  RiseUtils.swift
//  CodePush
//
//  Created by Kosy on 27/06/2024.
//  Copyright © 2024 Microsoft. All rights reserved.
//

import Foundation
import ZIPFoundation

@objc
public class RiseUtils : NSObject {
    
    @objc(unzipAtPath: destination:error:)
    public class func unzipAtPath(_ folder: String, destination: String) throws {
        let fileManager = FileManager()
        
        var sourceURL = URL(fileURLWithPath: folder)
        
        var destinationURL = URL(fileURLWithPath: destination)
        do {
            try fileManager.createDirectory(at: destinationURL, withIntermediateDirectories: true, attributes: nil)
           try fileManager.unzipItem(at: sourceURL, to: destinationURL)
        } catch {
            
            print("[RiseUtils] Extraction of ZIP archive failed with error:\(error)")
        }
        
   
        
    }
}
