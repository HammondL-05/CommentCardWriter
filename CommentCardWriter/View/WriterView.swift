//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Hammond, Leo (NA) on 04/02/2023.
//

import SwiftUI

struct WriterView: View {
    let examples = Comments.generateExampleComments()
    let comment = Comments()
    @State private var subjects = Subjects.generateExampleSubjects()
    @State private var selectedSubject = String()
    @State private var enjoyment: Double = 50.0
    @State private var choice: Int = 0 {
        didSet{
            if choice >= examples.count {
                choice = 0
            }
        }
    }
    var body: some View {
        Form {
            Section(header: Text("How much do you enjoy your subject?")) {
                Slider(value: $enjoyment, in: 0...100.0)
            }
            Section{
                Button("Generate Comment", action: {
                    if choice > examples.count-1 {
                        choice = 1
                    } else {
                        choice += 1
                    }
                })
            }
            VStack(alignment: .leading, spacing: 20) {
                Text("\(comment.generateComment(enjoyment: enjoyment, subject: subjects[choice]))")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WriterView()
    }
}
