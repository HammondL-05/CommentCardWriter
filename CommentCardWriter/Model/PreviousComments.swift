//
//  Previous Comments.swift
//  CommentCardWriter
//
//  Created by Hammond, Leo (NA) on 03/03/2023.
//

import Foundation

class PreviousComments: ObservableObject {
    @Published var comments: [String] = []
    var commentString: String = ""
    

    
    func saveComments(comment: String) {
        self.comments.append(comment)
        FileManager.default.save(to: "comments.json", object: self.comments)
    }
    
    func displayComments() -> [String] {
        comments = FileManager.default.load(from: "comments.json") ?? ["No comments"]
        return comments
    }
    
    func concatenateComments() -> String {
        for comment in self.comments {
            self.commentString += "\(comment)" + "\n"
        }
        return commentString
    }
}
