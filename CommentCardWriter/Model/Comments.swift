//
//  Comments.swift
//  CommentCardWriter
//
//  Created by Hammond, Leo (NA) on 04/02/2023.
//

import Foundation

class Comments {
    var commentArray: [String]
    
    init() {
        commentArray = Array()
    }
    
    #if DEBUG
    static func generateExampleComments() -> [String] {
        var comments: [String] = []
        for i in 1..<5 {
            comments.append("Comment\(i)")
        }
        
        return comments
    }
    #endif
}
