//
//  Comments.swift
//  CommentCardWriter
//
//  Created by Hammond, Leo (NA) on 04/02/2023.
//

import Foundation

class Comments {
    var commentArray: [String]
    var enjoyment: Double
    
    init() {
        commentArray = Array()
        enjoyment = 50.0
    }
    
    func generateComment(enjoyment: Double, subject: String) -> String {
        if self.enjoyment >= 50.0 {
            return "I love \(subject)"
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
