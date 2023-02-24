//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Hammond, Leo (NA) on 04/02/2023.
//

import SwiftUI

struct WriterView: View {
    let examples = Comments.generateExampleComments()
    let commentObject = Comments()
    @State var comment = String()
    @State private var subjects = Subjects().getSubjects()
    @State private var selectedSubject = "CompSci"
    @State private var enjoyment: Double = 50.0
    
    var body: some View {
        Form {
            Section(header: Text("What subject do you want a comment for? ")) {
                Picker("Subjects", selection: $selectedSubject) {
                    ForEach(subjects, id: \.self) {
                        Text("\($0)")
                    }
                }
                .pickerStyle(.wheel).frame(height: 120)
            }
            Section(header: Text("How much do you enjoy your subject?")) {
                Slider(value: $enjoyment, in: 0...100.0)
            }
            Section{
                Button("Generate Comment", action: {
                    comment = commentObject.generateComment(enjoyment: enjoyment, subject: selectedSubject)
                })
            }
            VStack(alignment: .leading, spacing: 20) {
                Text("\(comment)")
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WriterView()
    }
}
