//
//  RecipeView.swift
//  recipeMaker
//
//  Created by Shashwat . on 08/01/22.
//

import SwiftUI

struct RecipeView: View {
    var recipe:Recipe
    
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
            }.frame(height:200)
            VStack(spacing:30){
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                VStack(alignment: .leading, spacing: 30){
                    Text(recipe.description)
                    VStack{
                        Text("Ingredients")
                            .font(.headline)
                            .padding(.bottom)
                        Text(recipe.ingredient)
                    }
                }
                VStack(alignment: .leading, spacing: 30){
                    Text(recipe.description)
                    VStack{
                        Text("Directions")
                            .font(.headline)
                            .padding(.bottom)
                        Text(recipe.directions)
                    }
                }
            }
            .padding(.horizontal)
            
        }
        .ignoresSafeArea(.container,edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
