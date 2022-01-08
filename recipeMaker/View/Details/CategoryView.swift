//
//  CategoryView.swift
//  recipeMaker
//
//  Created by Shashwat . on 08/01/22.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesVM: RecipeViewModel
    var category:Category
    var body: some View {
        ScrollView{
            RecipeList(recipes: recipesVM.recipes.filter{ $0.category == category.rawValue})
        }
        .navigationTitle(category.rawValue.capitalized + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.breakfast)
            .environmentObject(RecipeViewModel())
    }
}
