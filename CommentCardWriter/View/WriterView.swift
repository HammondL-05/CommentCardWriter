//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Hammond, Leo (NA) on 04/02/2023.
//

import SwiftUI

struct WriterView: View {
    let examples = Comments.generateExampleComments()
    @State private var choice: Int = 0 {
        if choice >= examples.count {
            chocie = 0
        }
    }
    var body: some View {
        Form {
            VStack(alignment: .leading, spacing: 20) {
                Text("\(examples[choice])")
            }
            Section {
                Button("Change Comment", action: {
                    if choice > examples.count-1 {
                        choice = 1
                    } else {
                        choice += 1
                    }
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WriterView()
    }
}
