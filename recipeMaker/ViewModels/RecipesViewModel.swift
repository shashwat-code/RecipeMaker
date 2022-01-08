//
//  RecipesViewModel.swift
//  recipeMaker
//
//  Created by Shashwat . on 08/01/22.
//

import Foundation

class RecipeViewModel:ObservableObject{
    @Published private(set) var recipes:[Recipe] = []
    
    init(){
        recipes = Recipe.all
    }
    
    func appendRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}
