//
//  Subjects.swift
//  CommentCardWriter
//
//  Created by Hammond, Leo (NA) on 08/02/2023.
//

import Foundation

class Subjects {
    var subjectArray: [String]
    
    init() {
        subjectArray = ["CompSci", "Chemistry", "Pure Maths", "Applied Maths"]
    }
    
//    func chooseSubject() {
//        
//    }
    
    func getSubjects() -> [String] {
        return subjectArray
    }
    
//#if DEBUG
//static func generateExampleSubjects() -> [String] {
//    var subjects: [String] = []
//    for i in 0..<5 {
//        subjects.append("Subject\(i)")
//    }
//    
//    return subjects
//}
//#endif
}
