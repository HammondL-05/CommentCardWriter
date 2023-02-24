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
    
    func generateComment(enjoyment: Double, subject: String) -> String {
        if enjoyment >= 75.0 {
            return "I love \(subject)"
        } else if enjoyment >= 50.0 {
            return "I like \(subject)"
        } else if enjoyment < 50.0 && enjoyment > 25.0 {
            return "I dislike \(subject)"
        } else {
            return "I hate \(subject)"
        }
    }
    
    
    
    
    
    #if DEBUG
    static func generateExampleComments() -> [String] {
        var comments: [String] = []
        comments.append("No Comment")
        for i in 1..<5 {
            comments.append("Comment\(i)")
        }
        
        return comments
    }
    #endif
}
