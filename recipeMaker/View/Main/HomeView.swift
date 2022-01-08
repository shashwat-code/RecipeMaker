//
//  HomeView.swift
//  recipeMaker
//
//  Created by Shashwat . on 07/01/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipeVM: RecipeViewModel
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipeVM.recipes)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipeViewModel())
    }
}
