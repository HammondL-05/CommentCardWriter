//
//  PreviousCommentsView.swift
//  CommentCardWriter
//
//  Created by Hammond, Leo (NA) on 01/03/2023.
//

import SwiftUI

struct PreviousCommentsView: View {
    let previousComments = PreviousComments()
    var body: some View {
        Form {
            Section {
                Text("\(previousComments.comments)")
            }
        }
    }
}

struct PreviousCommentsView_Previews: PreviewProvider {
    static var previews: some View {
        PreviousCommentsView()
    }
}
