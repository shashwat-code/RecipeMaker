//
//  NewRecipes.swift
//  recipeMaker
//
//  Created by Shashwat . on 07/01/22.
//

import SwiftUI

struct NewRecipes: View {
    @State var showRecipe:Bool = false
    var body: some View {
        NavigationView {
            Button("Add New Recipe"){
                showRecipe.toggle()
            }
            .navigationTitle("New Recipe")
            .sheet(isPresented: $showRecipe) {
                AddNewRecipe()
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct NewRecipes_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipes()
    }
}
