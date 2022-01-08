//
//  FavoriteView.swift
//  recipeMaker
//
//  Created by Shashwat . on 07/01/22.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        NavigationView {
            Text("NO Favorites")
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
        
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
