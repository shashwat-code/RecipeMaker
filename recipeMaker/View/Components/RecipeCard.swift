//
//  RecipeCard.swift
//  recipeMaker
//
//  Created by Shashwat . on 07/01/22.
//

import SwiftUI

struct RecipeCard: View {
    var recipe:Recipe
//    @EnvironmentObject var RecipesVM: RecipeViewModel
    var body: some View {
        AsyncImage(url: URL(string: recipe.image)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay(alignment: .bottom){
                    Text(recipe.name)
                        .font(.headline)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 3, x: 0, y: 0)
                        .frame(maxWidth:136)
                        .padding()
                }
        } placeholder: {
            Image(systemName: "photo")
        }
        .frame(width: 160, height: 217, alignment: .top)
        .background(.red)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.all[0])
    }
}
