//
//  RootTabView.swift
//  CommentCardWriter
//
//  Created by Hammond, Leo (NA) on 01/03/2023.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            WriterView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Writer")
                }
            PreviousCommentsView()
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("Previous Comments")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
